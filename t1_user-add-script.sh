#!/bin/bash

add_user()
{
 user=$1
 pass=$2


useradd -m -p $pass $user && echo " added user !!"

}


add_user sohail test@123

