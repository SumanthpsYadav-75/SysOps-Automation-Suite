#! /bin/bash

create_user(){
	read -p "enter the user:" user
	if id "$user" &>/dev/null
	then
		echo "user  is exist"
	else
		echo "user is not exist create it !!!"
		sudo apt update
		sudo useradd -m -s /bin/bash "$user" &>/dev/null
		sudo passwd "$user"
		echo " $user is create successfully "
	fi
}

backup(){
	src=alpha
	dest=beta
	if [ -d  $dest ]
	then
		echo " destination is exist"
	else
		echo " destination is not exist  create it !!!"
		mkdir $src $dest
		cd $src
		touch a{1..5}.txt
		cd ..
	fi
	cp -r $src/* $dest
	if [ $? -eq 0 ]
	then
		echo " successfully copied $src path to $dest "
	else
		echo " backup failed "
	fi
}


tools(){
	read -p " enter the tools:" tool
	if which "$tool" &>/dev/null
	then
		echo " $tool is already exist "
	else
		echo " $tool is not exist  install it !!!"
		sudo apt install "$tool" -y 
		echo "$tool is intalled successfully"
	fi
}

df_usage(){
	disk=$(df -h |awk 'NR==2 {print $2}' | sed 's/%//')
	echo "disk is 90% available disk is $disk "
}

echo "-----------------------------------"
echo "menu disk automate task"
echo "1.create  a user "
echo "2.backup the files"
echo "3.installing tools"
echo "4.disk usage"
echo "------------------------------------"


read -p "enter the input:"  choice
case $choice  in
1)create_user ;;
2)backup ;;
3)tools ;;
4)df_usage ;;
*)echo "invalid choice"
esac
