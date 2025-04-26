#!/bin/bash

#  =====================================================================================================
#               Ladda ned valutakurserna ifrån Riksbanken (laddar ned gamla och nya valutor)
#  =====================================================================================================
#    Skapad:   2025-04-27
#    Filnamn:  riksbanken.sh
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
echo "$svarsdata" > "data/$filnamn"
