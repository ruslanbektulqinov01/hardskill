#!/bin/bash


# Foydalanuvchidan son olish
read -p "Istalgan sonni kiriting: " son

# Sonni tekshirish va bo'linishi
if [ $son -gt 0 ]; then
    for (( i = 1; i <= son; i++ )); do
        if [ $(( son % i )) -eq 0 ]; then
            echo "$i ga bo'linadi"
        fi
    done
else
    echo "Musbat son kiriting!"
fi

#!/bin/bash

# Foydalanuvchi sonni kiritishni so'raymiz
echo "1 dan 7 gacha bir son kiriting (exit 1 bilan dasturni tugatish): "
while true; do
    read number

    # Sonni tekshirib, haftaning kunini aniqlash va dasturni tugatish
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
            echo "Dasturni tugatish."
            exit 1
            ;;
        *)
            echo "Noto'g'ri son. 1 dan 7 gacha son kiriting."
            ;;
    esac
done


# Foydalanuvchidan sonni kiritishni so'raymiz
echo "Istalgan son kiriting (exit 1 bilan dasturni tugatish): "
while true; do
    read number

    # Sonni tekshirib, manfiy, musbat yoki 0 likka tekshiramiz
    if [ "$number" == "exit 1" ]; then
        echo "Dasturni tugatish."
        exit 1
    fi

    if [ $number -gt 0 ]; then
        echo "Siz kiritgan son musbat."
    elif [ $number -lt 0 ]; then
        echo "Siz kiritgan son manfiy."
    else
        echo "Siz kiritgan son 0 ga teng."
    fi

    # Yangi son kiritishni so'raymiz
    echo "Yana bir son kiriting (exit 1 bilan dasturni tugatish): "
done





