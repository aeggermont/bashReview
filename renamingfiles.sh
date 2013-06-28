#!/bin/bash

# Name of the script:
# echo $@

# Arguments
# echo $#

# process ID
# echo $$

# Status of a previous call
# echo $?


# To get the lits of files in the directory:
# $filelist=$(find ./ -maxdepth 1 -type f | sort -n)

# To get the number of files collected
# $length=$(filelist[@])

# To get the last file in the list
# $lastfile=${filelist[$((length-1))])


if [ $# -eq 3  ]; then
   criteria=$1
   re_match=$2
   replace=$3
else
   exit 1;
fi

echo $criteria
echo $re_match
echo $replace

for i in $( ls *$criteria* );
do
    src=$i
    tgt=$(echo $i | sed -e "s/$re_match/$replace/")
    echo $src
    echo $tgt
    mv $src $tgt
done

