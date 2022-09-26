#! /bin/bash

echo "Input password to check strength: "
read password

until [[ ${#password} -gt 7 ]] && [[ $password = *[[:punct:]]* ]] && [[ $password =~ [A-Z] ]] && [[ $password =~ [a-z] ]] && [[ $password =~ [0-9] ]]
do
	echo "Your password is not secure"
	read password
done

echo "Your password is secure"

exit 0
