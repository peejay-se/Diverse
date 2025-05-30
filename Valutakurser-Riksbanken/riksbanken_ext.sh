#!/bin/bash

#  =====================================================================================================
#               Ladda ned valutakurserna ifrån Riksbanken (laddar ned gamla och nya valutor)
#  =====================================================================================================
#    Skapad av: Peter Jonsson
#    Version:   1.0
#    Datum:     2025-04-27
#    Revision:  xxxx-xx-xx v x.xx
#    Filnamn:   riksbanken_ext.sh
#  =====================================================================================================
#   När publiceras valutakurserna?
#   Nya noteringar för valutakurserna publiceras varje svensk bankdag kl. 16.15. 
#   Månadsgenomsnitt för valutakurser finns tillgängliga sista bankdagen i varje månad och årsgenomsnitt 
#   för valutakurser finns tillgängliga sista bankdagen varje år, kl. 16.15.
#
#   Annars får man HTTP Status 204 => No content
#
#   Vilka valutakurser publicerar Riksbanken?
#   Riksbanken publicerar samma valutakurser som ECB publicerar.
#
#   Hur många decimaler har ränte- och valutanoteringarna?
#   I de flesta fall publiceras ränte- och valutakursnoteringarna med 5 decimalers precision, 
#   enligt principen 1,23456. Antalet decimaler kan dock variera. Det kan vara färre decimaler, om de 
#   sista siffrorna är 0 visas de inte. Det kan också visas fler decimaler för vissa valutor med lågt värde. 
#   Tal mindre än 1 visas med 1 till 4 värdesiffror, dock högst 6 decimaler, t.ex. 0,000012. 
#  =====================================================================================================
#    Revisionshistorik
#  =====================================================================================================

# ====[ Filnamn för att lagra löpnummer ]====
filnamn="riksbanken_ext.cnt"

# ====[ RegExp enligt ISO 8601 ]====
DATUM_ISO_8601_REGEX="^[0-9]{4}-[0-9]{2}-[0-9]{2}$"

# ====[ Kontrollera om ett argument skickas med och att det är ett datum ]====
if [ "$#" -eq 1 ]; then

  echo "Kontrollerar om datum stämmer enligt ISO 8601 ($1)"
  
  # ====[ Kontrollera så att det första argumentet är datum enligt ISO 8601 (ÅÅÅÅ-MM-DD) ]=====
  if [[ $1 =~ $DATUM_ISO_8601_REGEX ]]; then
      echo " Stämmer enligt ISO 8601...."
      dagensdatum=$1
  else
      echo " Stämmer inte enligt ISO 8601! Ange datum i formatet ÅÅÅÅ-MM-DD"
      exit 1
  fi
else
  dagensdatum=$(date "+%Y-%m-%d")
fi

echo "Datum $dagensdatum"

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

echo "Kontrollerar om det är bankdag....."

if [ "$bankdag" = "false" ]; then
    echo " Ej bankdag..... avbryter"
    exit 1
  else
    echo " Bankdag....ok"  
fi

# ====[ URL till Riksbankens öppna API - hämta alla aktiva valutor önskat datum ]====
api_url="https://api.riksbank.se/swea/v1/Observations/ByGroup/130/$dagensdatum/$dagensdatum"

# ====[ Byt ut filnamn om ett datum skickas med som argument ]====
if [ "$#" -eq 1 ]; then
  # ====[ Argumentets datum ]====
  datum="${1//-/}"
else
  # ====[ Dagens datum ]====
  datum=$(date "+%Y%m%d")
fi

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
echo "$svarsdata" > "$filnamn"
