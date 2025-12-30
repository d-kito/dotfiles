statusmonitor1=$(eww active-windows | grep "menu-3:")
statusmonitor2=$(eww active-windows | grep "menu-2:")
statusmonitor3=$(eww active-windows | grep "menu:")

monitor=$(hyprctl monitors -j | jq -r '.[] | select(.focused==true) | .id')


if [[ $monitor == 0 ]]; then
    if [[ $statusmonitor1 != "" ]]; then
        eww close menu-3
    else
        eww open menu-3
    fi

elif [[ $monitor == 1 ]]; then
    if [[ $statusmonitor2 != "" ]]; then
        eww close menu-2
    else
        eww open menu-2
    fi

else
    if [[ $statusmonitor3 != "" ]]; then
        eww close menu
    else
        eww open menu
    fi

fi
