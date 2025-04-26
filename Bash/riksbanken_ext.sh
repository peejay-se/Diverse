#!/bin/bash

#  =====================================================================================================
#               Ladda ned valutakurserna ifrån Riksbanken (laddar ned gamla och nya valutor)
#  =====================================================================================================
#    Skapad:   2025-04-27
#    Filnamn:  riksbanken_ext.sh
#  =====================================================================================================
#    Revisionshistorik
#  =====================================================================================================

# ====[ Filnamn för att lagra löpnummer ]====
filnamn="riksbanken_ext.cnt"

dagensdatum=$(date "+%Y-%m-%d")
#dagensdatum="2025-04-25"

# ====[ URL för att kontrollera om det är en bankdag ]====
api_url_bankdag=https://api.riksbank.se/swea/v1/CalendarDays/${dagensdatum}/${dagensdatum}


# ====[ Svarsinfo ifrån Riksbanken om man frågar efter bankdag]====
# [
#     {
#         "calendarDate": "2025-04-27",
#         "swedishBankday": false,
#         "weekYear": 2025,
#         "weekNumber": 17,
#         "quarterNumber": 2,
#         "ultimo": false
#     }
# ]

svarsdata=$(curl -s "$api_url_bankdag") 
bankdag=$(echo $svarsdata | jq ".[].swedishBankday")

if [ "$bankdag" = "false" ]; then
    echo "Ej bankdag..... avbryter"
    exit 1
fi

# ====[ URL till Riksbankens öppna API - hämta alla aktiva valutor önskat datum ]====
api_url="https://api.riksbank.se/swea/v1/Observations/ByGroup/130/$dagensdatum/$dagensdatum"

# ====[ Dagens datum ]====
datum=$(date "+%Y%m%d")

# ====[ Tidpunkten ]====
tid=$(date "+%H%M%S")

# ====[ Kontrollera om filen finns, annars skapa den ]====
if [ ! -f "$filnamn" ]; then
    echo 0 > "$filnamn" # Starta med 0 om filen inte finns
fi

# ====[ Hämta det aktuella numret ifrån filen ]====
aktuelltnummer=$(cat "$filnamn")

# ====[ Öka numret med +1 ]====
nastanummer=$((aktuelltnummer + 1))

# ====[ Skriv ut det uppräknade numret till filen ]=====
echo "$nastanummer" > "$filnamn"

# ====[ Skapa ett nummer med nollutfyllnad och med 5 decimaler ]====
lopnummer=$(printf "%05d\n" "$nastanummer")
filnamn="Valutakurser_ext_${datum}_${tid}_${lopnummer}.json"


# ====[ Hämta data från API:et ]====
svarsdata=$(curl -s "$api_url")

# ====[ Kontrollera om anropet lyckades ]====
if [ $? -ne 0 ]; then
    echo "Kunde inte hämta data från Riksbankens API."
    exit 1
fi

# ====[ Skriv den hämtade datan till fil ]
echo "Hämtade valutakurser skrivs till filen $filnamn"
echo "$svarsdata" > "data/$filnamn"
