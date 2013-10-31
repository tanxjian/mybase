#!/bin/bash

echo 
pwd=`pwd`
echo "pwd=$pwd"

if [ $# -gt 0 ];then
	back_pwd=${pwd%$1*}$1
else
	back_pwd_kernel=${pwd%linux_kernel*}
	back_pwd_android=${pwd%android*}
	if [ $back_pwd_kernel != $pwd ];then
		back_pwd=${back_pwd_kernel}linux_kernel
	elif [ $back_pwd_android != $pwd ];then
		back_pwd=${back_pwd_android}android
	else 
		echo "no linux_kernel or android"
	fi
fi

echo "back to:$back_pwd"
cd $back_pwd
if [ $? -ne 0 ];then
	echo "back to $back_pwd err"
fi
echo
