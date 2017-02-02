#!/bin/bash

# This scirpt will recover all aliases from Public Tahoe and prompt user to chose his/her ALIAS name and PASSWORD on recovering installation.
# Will download the ALIAS file from Public Tahoe and use PASSWORD to decrypt it and get the pb:// value for the private Tahoe where the 
# restoration files had been saved. 
#
# This script must be launched AFTER app_install_tahoe.sh and AFTER app_start_tahoe.sh
# if NEW_INSTALL as part of APP_CONFIGURATION_SCRIPT.
#
# This script is the light pink area on the flow drawing

# This user interface will detect the enviroment and will chose a method based
# on this order : X no GTK, X with GTK , dialaog, none )

if [ -x /usr/bin/dialog  | /bin/dialog ]; then
    interface=dialog
else 
    inteface=none
    if [ -f /tmp/.X0-lock ]; then
        interface=X
        if [ -x /usr/bin/gtk]; then
            inteface=Xdialog
        fi
    fi
fi


select_alias() {

#This will offer a dialog to the user to chose his/her ALIAS to be used on recovery tasks
textmsg="Please select you ALIAS from the list:\n\n:";

if [ $interface = "dialog" ]; then
    dialog --colors --menu "$textmsg" 0 0 15 alias1 "" alias2 "" alias3 "" alias4 "" alias5 ""  2> /tmp/alias
    alias=$(cat /tmp/alias)
else 
    read -p "$textmsg" -e alias
fi

echo "El alias seleccionado es $alias"

}



prompt_pass() {

textmsg="Enter $alias PASSWORD for system recovery from backup\n\n";

if [ ${#errmsg} -gt 0 ]; then
    textmsg=$textmsg\\Z1$errmsg
    errmsg=""
fi



if [ $interface = "dialog" ]; then

    dialog --colors --form "$textmsg" 0 0 1 "Passwod:" 1 2 "" 1 20 20 20 2> /tmp/inputbox.tmp
    passwd=$(cat /tmp/inputbox.tmp)
    rm /tmp/inputbox.tmp
else
    read -p "$textmsg" -e passwd
fi


}


check_inputs() {

errmsg="";
# Are valid all these inputs ?
if [ -z "${myalias##*" "*}" ]; then
    errmsg="Spaces are not allowed";
fi

strleng=${#myalias}
if [[ $strleng -lt 8 ]]; then
    errmsg="$myalias ${#myalias} Must be at least 8 characters long"
fi

if [ -z "${myfirstpass##*" "*}" ]; then
    errmsg="Spaces are not allowed";
fi

strleng=${#myfirstpass}
if [[ $strleng -lt 8 ]]; then
    errmsg="$myfirstpass ${#myalias} Must be at least 8 characters long"
fi

if [ $myfirstpass != $mysecondpass ]; then
    errmsg="Please repeat same password"
fi

while [ ${#errmsg} -gt 0 ]; do
    echo "ERROR: $errmsg$errmsg2"
    prompt
done
  
}

deofuscate () {
    deo='';
    thiscounter=0
    com="????";
    while [ $thiscounter -lt 30 ]; do
        deo=$deo${alias:$thiscounter:1}$com
        ((thiscounter++));
    done
}


select_alias
prompt_pass
echo "Se usara el pass $passwd para desencriptar el alias $alias"
deofuscate
echo "DEO:$deo";


# tomamos el ficheor $alias de /var/public_node
# necesitamos la key priv protegida con la clave subida en una intalaci�n inicial por el usuario que 
# al habriamos subido con otro nombre secreto a /var/public_node/.keys
# Save on pb_point the node ID to mount /var/node_1 and recover all files from it

pb_point=$(echo $passwd | openssl rsautl -decrypt -inkey /var/public_node/.keys/$deo -in /var/public_node/$alias -passin stdin)

# if running, stop private node
/home/tahoe-lafs/venv/bin/tahoe stop node_1

# reconfigure node_1 mapping point
# we need no just to restore my files, also my storage that contents file chunks from others to rebuild the full lost node
# and avoid damages in the grid performance and realibility
# we need to check there not existing node with same node_1 directory mounted in other box

echo $pb_point | cut -d \  -f 1,2 > /root/.tahoe/node_1  # save credentials for node_1 restoration
echo $pb_point > /usr/node_1/private/accounts            # save cap for node_1 restoration

# now we will able start to node_1 ,mount /var/node_1 and first of all recover node_1.tar.gz for the full node_1 restoration
# including the shares 

/home/tahoe-lafs/venv/bin/tahoe start /usr/node_1
tahoe deep-check --repair -u http://127.0.0.1:3456 node_1:
umount /var/node_1
user=$(cat /root/.tahoe/node_1 | cut -d \  -f 1)
pass=$(cat /root/.tahoe/node_1 | cut -d \  -f 2)
sleep 20s
echo $pass | sshfs $user@127.0.0.1:  /var/node_1  -p 8022 -o no_check_root -o password_stdin -o StrictHostKeyChecking=no

cp /var/node_1/node_1.tar.gz /tmp/.
cp /var/node_1/box.tar.gz /tmp/.

# stop node_1 and umount it
umount /var/node_1
/home/tahoe-lafs/venv/bin/tahoe stop /usr/node_1

# decompress :
# node_1.tar.gz is a backup of full node_1 /usr/node_1 
#               created : tar -czpPf /tmp/node_1.tar.gz /usr/node_1 && cp /tmp/node_1.tar.gz /usr/node_1/. &&  tahoe cp -u https://127.0.0.1:3456 node_1: /tmp/node_1.tar.gz /.
# box.tar.gz    is a backup of other required files. This is based on the /etc/backup/backup.cfg file used by app_backup.sh
#               where app_backup.sh is called from crond



exit



prompt
check_inputs
echo Your name is $myalias
echo Clave $myfirstpass
echo Clave $mysecondpass

# Convert this alias to encrypted key with pass=$myfirstpass and save as $myalias

# creates PEM 
rm /tmp/ssh_keys*
ssh-keygen -N $myfirstpass -f /tmp/ssh_keys
openssl rsa  -passin pass:$myfirstpass -outform PEM  -in /tmp/ssh_keys -pubout > /tmp/rsa.pem.pub

# create a key phrase for the private backup Tahoe node config and upload to public/$myalias file
# the $phrase is the entry point to the private area (pb:/ from /usr/node_1/tahoe.cfg )
# $phrase will be like "URI:DIR2:guq3z6e68pf2bvwe6vdouxjptm:d2mvquow4mxoaevorf236cjajkid5ypg2dgti4t3wgcbunfway2a"
frase=$(/home/tahoe-lafs/venv/bin/tahoe manifest -u http://127.0.0.1:3456 node_1: | head -n 1)
echo $frase | openssl rsautl -encrypt -pubin -inkey /tmp/rsa.pem.pub  -ssl > /tmp/$myalias
mv /tmp/$myalias /var/public_node/$myalias




# now let's go to schedulled our first backup
# this will be launched for first time and then schedulle on crond


# Decrypt will be used for restore only, and will discover the requied URI:DIR2 value for the private area node
# cat /var/public_node/$myalias | openssl rsautl -decrypt -inkey /tmp/ssh_keys # < Will prompt for password to decrypt it




exit

