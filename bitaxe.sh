#!/bin/bash
API_URL="http://192.168.1.10/api/system/info"

data=$(curl -s "$API_URL")

# Extraction des valeurs
power=$(echo "$data" | jq -r ".power")
temp=$(echo "$data" | jq -r ".temp")
hash=$(echo "$data" | jq -r ".hashRate")
bestdiff=$(echo "$data" | jq -r ".bestDiff")
bestsession=$(echo "$data" | jq -r ".bestSessionDiff")
upt=$(echo "$data" | jq -r ".uptimeSeconds")
days=$((upt/86400))
hours=$(((upt%86400)/3600))
minutes=$(((upt%3600)/60))
seconds=$((upt%60))
fan=$(echo "$data" | jq -r ".fanrpm")

# Largeur du widget en caractères pour centrer les séparateurs
width=40

# Fonction pour centrer une ligne
center() {
    text="$1"
    len=${#text}
    pad=$(( (width - len) / 2 ))
    printf "%*s%s\n" $pad "" "$text"
}

# Affichage
center "===== Bitaxe Gamma ====="        # séparateur du haut
printf "Hash Rate           : %.2f H/s\n" "$hash"
printf "Power               : %.2f W\n" "$power"
printf "Temperature         : %s °C\n" "$temp"
printf "Best Diff           : %s\n" "$bestdiff"
printf "Best Session Diff   : %s\n" "$bestsession"
printf "Uptime              : %dd %dh %dm %ds\n" "$days" "$hours" "$minutes" "$seconds"
printf "Fan Speed           : %s RPM\n" "$fan"
center "========================"        # séparateur du bas

