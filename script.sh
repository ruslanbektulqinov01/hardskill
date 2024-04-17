#!/bin/bash

# 1-masala

read -p "Istalgan son kiriting: " son

if [ $son -gt 0 ]; then
	for (( i = 1; i <= son; i++ )); do
		if [ $(( son % i )) -eq 0 ]; then
			echo "$i ga bo'linadi"
		fi
	done
else
	echo "Musbat son kiriting"
fi

# 2-masala

echo "1 dan 7 gacha bir son kiriting: (exit 1 bilan dasturni tugatish mumkin): "

while true; do
	read number

	case $number in
		1)
			echo "Dushanba"
			break
			;;
		2)
			echo "Seshanba"
			break
			;;
		3)
			echo "Chorshanba"
			break
			;;

		4)
			echo "Payshanba"
			break
			;;
		5)
			echo "Juma"
			break
			;;
		6)
			echo "Shanba"
			break
			;;
		7)
			echo "Yakshanba"
			break
			;;

		exit\ 1)
			echo "Dastur tugatiladi. "
			exit 1
			;;
		*)
			echo "Noto'g'ri son. 1 dan 7 gacha kiriting"
			;;
	esac
done


# 3-masala

echo "Istalgan son kiriting: (exit 1 tugatadi): "

while true; do
	read number

	if [ "$number" == "exit 1" ]; then
		echo "Dastur tugatiladi."
		exit 1
	fi

	if [ $number -gt 0 ]; then
		echo "Siz kiritgan son musbat"
	elif [ $number -lt 0 ]; then
		echo "Siz kiritgan son manfiy"
	else
		echo "Siz kiritgan son 0 "
	fi

	echo "Yana son kiriting. (exit 1 bilan tugaydi: )"
done































