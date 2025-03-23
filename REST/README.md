## REST Klient

Ett försökt med en REST-klient. Inte färdigkodad. Funktionerna läser inte ifrån HTML-formuläret!

Blir problem om APIerna inte returnerar dessa parametrar

sec-fetch-mode:"cors"
sec-fetch-site:"cross-site"

CORS (Cross-Origin Resource Sharing) är en säkerhetsfunktion implementerad i webbläsare för att skydda användare 
från potentiellt skadliga förfrågningar mellan olika ursprung (t.ex. mellan olika domäner). Det är designat för 
att skydda data och användares integritet, och det går inte att "slå av" CORS i webbläsaren på klientsidan i en 
produktionsmiljö.

Starta webbläsaren utan CORS (inte rekommenderat för produktion)
Det går att starta en webbläsare i ett läge som kringgår CORS, men detta är endast för testning och inte för slutanvändare.

Exempelvis i Chrome:
chrome.exe --disable-web-security --user-data-dir="C:\chrome_dev"
