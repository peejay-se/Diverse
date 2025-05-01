#!/bin/bash

#  =====================================================================================================
#           Ladda ned valutakurserna ifrån ExchangeRate API (https://www.exchangerate-api.com/)
#  =====================================================================================================
#    Skapad av: Peter Jonsson
#    Version:   1.0
#    Datum:     2025-05-02
#    Revision:  xxxx-xx-xx v x.xx
#    Filnamn:   exchangerate.sh
#  =====================================================================================================
#   
#  =====================================================================================================
#    Revisionshistorik
#  =====================================================================================================


# ====[ URL till ExchangeRate API - Hämta svenska valutor ]====
#api_url="https://api.exchangerate-api.com/v4/latest/SEK"  Gamla versionen
api_url="https://open.er-api.com/v6/latest/SEK"

# ====[ Dagens datum ]====
datum=$(date "+%Y%m%d")

# ====[ Tidpunkten ]====
tid=$(date "+%H%M%S")

# ====[ Skapa filnamn ]====
filnamn="ExchangeRateAPI_${datum}_${tid}.json"

# ====[ Hämta data från API:et ]====
svarsdata=$(curl -s "$api_url")

# ====[ Kontrollera om anropet lyckades ]====
if [ $? -ne 0 ]; then
    echo "Kunde inte hämta data från ExchangeRate API."
    exit 1
fi

# ====[ Skriv den hämtade datan till fil ]
echo "Hämtade valutakurser skrivs till filen $filnamn"
echo "$svarsdata" > "$filnamn"

# ====[ Senaste uppdatering ]====
senaste_uppdatering=$(echo "$svarsdata" | jq -r '.time_last_update_unix')
# ====[ Nästa uppdatering ]====
nasta_uppdatering=$(echo "$svarsdata" | jq -r '.time_next_update_unix')

# ====[ Konvertera UNIX-tid till UTC ]=====
SENASTE_UPPDATERING_UTC_DATUM=$(date -u -d @"$senaste_uppdatering" +"%Y-%m-%d %H:%M:%S")
NASTA_UPPDATERING_UTC_DATUM=$(date -u -d @"$nasta_uppdatering" +"%Y-%m-%d %H:%M:%S")
echo "Senaste uppdatering $SENASTE_UPPDATERING_UTC_DATUM - nästa uppdatering $NASTA_UPPDATERING_UTC_DATUM" 
