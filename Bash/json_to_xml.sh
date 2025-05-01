#!/bin/bash

#  =====================================================================================================
#             Konvertera JSON-filen som är nedladdad ifrån Riksbanken till en XML-fil
#  =====================================================================================================
#    Skapad av: Peter Jonsson
#    Version:   1.0
#    Datum:     2025-04-27
#    Revision:  xxxx-xx-xx v x.xx
#    Filnamn:   json_to_xml.sh
#  =====================================================================================================
#    Detta skript utnyttjar funktionerna:
#     jq - commandline JSON processor [version 1.6]
#  =====================================================================================================
#    Revisionshistorik
#  =====================================================================================================

# ====[ Antalet argument som skriptet kräver]
antal_argument=1

# ====[ Kontrollera så att det finns rätt antal argument till skriptet ]
if [ "$#" -ne "$antal_argument" ]; then
    echo "Det förväntas $antal_argument argument, men fick $#."
    echo "Användning:"
    echo "json_to_xml.sh [valutakurser.json]"
    exit 1
fi

# ====[ Ta JSON-filen ifrån första argumentet ]====
json_fil=$1
# ====[ Dagens datum ]====
datum=$(date "+%Y%m%d")
# ====[ Tidpunkten ]====
tid=$(date "+%H%M%S")
filnamn_ut="${1%.json}.xml"

# Kontrollera om filen existerar
if [ ! -f "$json_fil" ]; then
    echo "JSON-filen $json_fil finns inte."
    exit 1
fi

# ====[ Skriv ut starten av filen ]====
echo "<valutakurser>" >> "$filnamn_ut"

# ====[ Extrahera data ifrån JSON-array med jq ]=====
jq -c '.[]' "$json_fil" | while read -r item; do
    serie=$(echo "$item" | jq -r '.seriesId')
    datum=$(echo "$item" | jq -r '.date')
    varde=$(echo "$item" | jq -r '.value')

    echo " <valuta>" >> "$filnamn_ut"
    echo "  <serie>$serie</serie>" >> "$filnamn_ut"
    echo "  <datum>$datum</datum>" >> "$filnamn_ut"

    # ====[ Kontrollera om det är ett exponentiellt värde ]====
    if [[ $varde =~ ^[0-9]+(e|E)([-+]?[0-9]+)$ ]]; then
        echo "  <datum>$(printf "%.10f" "${varde}")</datum>" >> "$filnamn_ut"
    else
        echo "  <datum>$varde</datum>" >> "$filnamn_ut"
    fi

    echo " </valuta>" >> "$filnamn_ut"
done

# ====[ Skriv ut slutet av filen ]====
echo "</valutakurser>" >> "$filnamn_ut"

# ====[ Kontrollera resultat ]====
if [ $? -eq 0 ]; then
    echo "XML-filen har skapats - $filnamn_ut"
else
    echo "Ett fel inträffade under konverteringen"
fi
