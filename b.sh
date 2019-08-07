#!/bin/bash
echo "username:"
read username
echo "loged in"

fielpos="$username"
declare -i lineno=0
while read -r line; do
		echo $line
		let ++lineno
		sed -i "1 d" "$fielpos"
done < "$fielpos"


while true;
do
		read line
    if [ "$line" = "exit" ]; then
					echo "khoshal shodim (0_0)"
    			break
		elif [[ "$line" == "give me my messages" ]]; then
			declare -i lineno=0
			while read -r line; do
					echo $line
					let ++lineno
					sed -i "1 d" "$fielpos"
				done < "$fielpos"
		elif [[ "$line"  == msg* ]]; then
					echo "message recieved and will be sent to:"
					read destUser
					echo "Msg From $username :" ${line:3} >> $destUser
		else
          echo "wrong format message"
    fi
done
