#!/bin/bash

#  =====================================================================================================
#               Ladda ned valutakurserna ifrån Riksbanken (laddar ned gamla och nya valutor)
#  =====================================================================================================
#    Skapad av: Peter Jonsson
#    Version:   1.0
#    Datum:     2025-04-27
#    Revision:  xxxx-xx-xx v x.xx
#    Filnamn:   riksbanken.sh
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
filnamn="riksbanken.cnt"

# ====[ URL till Riksbankens öppna API - alla valutor även sådana som inte längre uppdateras ]====
api_url="https://api.riksbank.se/swea/v1/Observations/Latest/ByGroup/130"

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
filnamn="Valutakurser_${datum}_${tid}_${lopnummer}.json"


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
