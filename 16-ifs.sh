#!/bin/bash

file=/tmp/passwd-20250421

if [ ! -f $file ]
then
    echo "File $file does not exists"
else
    echo "File $file exists"
fi  

while IFS=":" read -r username password user_id group_id user_fullname home_dir shell_path
do
    echo "User name is $username"
    echo "Password is $password"
    echo "User id is $user_id"
    echo "Group id is $group_id"
    echo "User full name is $user_fullname"
    echo "Home directory is $home_dir"
    echo "Shell path is $shell_path"
done < $file

