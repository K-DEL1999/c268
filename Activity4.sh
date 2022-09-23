#! /bin/bash

echo "Input password to check strength: "
read password

while [ ${#password} -lt 8 ]
do
	echo "Input longer password: "
	read password
done

if [[ $password =~ ['!@#\$%^\&*()_+-'] ]] && [[ $password =~ [A-Z] ]] && [[ $password =~ [a-z] ]] && [[ $password =~ [0-9] ]]
then
	echo "Your password is secure"
else
	echo "Your password is not secure"
fi

exit 0
