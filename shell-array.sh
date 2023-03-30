#! /bin/sh


list=( ALL LEE.TzuTung Andrew Tinyverse Sensefield GhostKeepers Positive.Coin Forkonomy Writing.the.Time.Lag Politics.of.Art Political.Activist Visual.Anthropologist)
regExpNum='^[0-9]+$'

choose_one() {
    local length=${#list[@]}

    echo ${list[@]} | xargs -n 1 | sed '=' | sed "N;s/\n/. /"
    read -p "INFO> Choose one: " selected_index

    if [[ $selected_index =~ $regExpNum ]]; then
        local index=$((selected_index-1))
        selected_item=${list[$index]}
        echo "INFO> Your choice: [$selected_item]"
    else
        exit 1
    fi
}

choose_one
