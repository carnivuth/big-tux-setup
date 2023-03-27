check_updates(){
    
    if [ "$(checkupdates)" != "" ]; then
        notify-send -a "Updates" -i "" "updates available" "updates available" 
    else
        notify-send -a "Updates" -i "" "System up to date" "System up to date" 
    fi
}
update(){
    
    if [ "$(checkupdates)" != "" ]; then
        pkexec  pacman -Syu --noconfirm 
        notify-send -a "Updates" -i "" "updates completed" "updates completed"
    fi
}
loop(){
    notify=yes
    while : 
    do
    if [ "$(checkupdates)" != "" ]; then
        
        if [ "$notify" == "yes" ]; then 
            notify-send -a "Updates" -i "" "updates available" "updates available" 
            notify="no"
        fi
        echo ""
    else
        notify="yes"
        echo ""
    fi
    sleep 5
    done
}

case "$1" in
    --check)
        check_updates
        ;;
    --update)
        update
        ;;
    --loop)
        loop
        ;;
    *)
        check_updates
        ;;
esac
