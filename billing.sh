#! /bin/bash
function billing()
{
 echo "WELCOME TO ABC BILLING SYSYTEM"
 echo " "
 echo "1 FOR BACK-END/SERVER ACCESS"
 echo " "
 echo "2 FOR FRONT-END/CUSTOMER ACCESS"
 echo " "
 echo " "
 echo "ENTER YOUR CHOICE (1 OR 2) : "
 read choice
 if [ $choice -eq 1 ]
 then
  python3 product_sql.py
 else
  if [ $choice -eq 2 ]
  then
   python3 bills2.py
  else
   echo "INVALID CHOICE"
  fi
 fi
}
yn=0
while [ $yn -eq 0 ]
do
 billing
 echo " "
 echo "ENTER 0 (ZERO) TO CONTINUE : "
 read yn
done
