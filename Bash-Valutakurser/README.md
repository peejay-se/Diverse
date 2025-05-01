# Bash-Valutakurser
Hämta valutakurser ifrån Riksbankens öppna API

| Command | Description |
| --- | --- |
| json_to_xml.sh | Konverterar valutafilen ifrån JSON till XML |
| riksbanken.sh | Hämtar alla Riksbankens valutor, även sådana som inte uppdaterar  |
| riksbanken_ext.sh | Hämtar Riksbankens aktuella valutor för ett visst datum |

__riksbanken.sh__ & __json_to_xml.sh__
```
$ sudo ./riksbanken.sh
Hämtade valutakurser skrivs till filen Valutakurser_20250501_224512_00002.json

$ sudo ./json_to_xml.sh Valutakurser_20250501_224512_00002.json
XML-filen har skapats - Valutakurser_20250501_224512_00002.xml
```

__Valutakurser_20250501_224512_00002.json__
```json
[
  {
    "seriesId": "SEKATSPMI",
    "date": "2002-02-28",
    "value": 0.66033
  }, {
    "seriesId": "SEKAUDPMI",
    "date": "2025-04-30",
    "value": 6.16446
  }, {
    "seriesId": "SEKBEFPMI",
    "date": "2002-02-28",
    "value": 0.22524
  }, {
    "seriesId": "SEKBGNPMI",
    "date": "2025-04-30",
    "value": 5.60972
  }, {
    "seriesId": "SEKBRLPMI",
    "date": "2025-04-30",
    "value": 1.71862
  }, {
    "seriesId": "SEKCADPMI",
    "date": "2025-04-30",
    "value": 6.97578
  }, {
    "seriesId": "SEKCHFPMI",
    "date": "2025-04-30",
    "value": 11.68548
  }, {
    "seriesId": "SEKCNYPMI",
    "date": "2025-04-30",
    "value": 1.32771
  }, {
    "seriesId": "SEKCYPPMI",
    "date": "2007-12-28",
    "value": 16.19
  }, {
    "seriesId": "SEKCZKPMI",
    "date": "2025-04-30",
    "value": 0.44027
  }, {
    "seriesId": "SEKDEMPMI",
    "date": "2002-02-28",
    "value": 4.64577
  }, {
    "seriesId": "SEKDKKPMI",
    "date": "2025-04-30",
    "value": 1.47
  }, {
    "seriesId": "SEKEEKPMI",
    "date": "2010-12-30",
    "value": 0.5755
  }, {
    "seriesId": "SEKESPPMI",
    "date": "2002-02-28",
    "value": 0.05461
  }, {
    "seriesId": "SEKETT",
    "date": "2025-04-30",
    "value": 1
  }, {
    "seriesId": "SEKEURPMI",
    "date": "2025-04-30",
    "value": 10.9715
  }, {
    "seriesId": "SEKFIMPMI",
    "date": "2002-02-28",
    "value": 1.52821
  }, {
    "seriesId": "SEKFRFPMI",
    "date": "2002-02-28",
    "value": 1.3852
  }, {
    "seriesId": "SEKGBPPMI",
    "date": "2025-04-30",
    "value": 12.88037
  }, {
    "seriesId": "SEKGRDPMI",
    "date": "2002-02-28",
    "value": 0.026666
  }, {
    "seriesId": "SEKHKDPMI",
    "date": "2025-04-30",
    "value": 1.24374
  }, {
    "seriesId": "SEKHUFPMI",
    "date": "2025-04-30",
    "value": 0.02715
  }, {
    "seriesId": "SEKIDRPMI",
    "date": "2025-04-30",
    "value": 0.00058
  }, {
    "seriesId": "SEKIEPPMI",
    "date": "2002-02-28",
    "value": 11.5373
  }, {
    "seriesId": "SEKILSPMI",
    "date": "2025-04-30",
    "value": 2.66098
  }, {
    "seriesId": "SEKINRPMI",
    "date": "2025-04-30",
    "value": 0.11412
  }, {
    "seriesId": "SEKISKPMI",
    "date": "2025-04-30",
    "value": 0.0752
  }, {
    "seriesId": "SEKITLPMI",
    "date": "2002-02-28",
    "value": 0.004693
  }, {
    "seriesId": "SEKJPYPMI",
    "date": "2025-04-30",
    "value": 0.06744
  }, {
    "seriesId": "SEKKRWPMI",
    "date": "2025-04-30",
    "value": 0.00678
  }, {
    "seriesId": "SEKKWDPMI",
    "date": "2005-02-28",
    "value": 23.35
  }, {
    "seriesId": "SEKLTLPMI",
    "date": "2014-12-30",
    "value": 2.7555
  }, {
    "seriesId": "SEKLVLPMI",
    "date": "2013-12-30",
    "value": 12.7288
  }, {
    "seriesId": "SEKMADPMI",
    "date": "2023-11-24",
    "value": 1.0386
  }, {
    "seriesId": "SEKMXNPMI",
    "date": "2025-04-30",
    "value": 0.49417
  }, {
    "seriesId": "SEKMYRPMI",
    "date": "2025-04-30",
    "value": 2.23571
  }, {
    "seriesId": "SEKNLGPMI",
    "date": "2002-02-28",
    "value": 4.1232
  }, {
    "seriesId": "SEKNOKPMI",
    "date": "2025-04-30",
    "value": 0.92908
  }, {
    "seriesId": "SEKNZDPMI",
    "date": "2025-04-30",
    "value": 5.70867
  }, {
    "seriesId": "SEKPHPPMI",
    "date": "2025-04-30",
    "value": 0.17268
  }, {
    "seriesId": "SEKPLNPMI",
    "date": "2025-04-30",
    "value": 2.56625
  }, {
    "seriesId": "SEKPTEPMI",
    "date": "2002-02-28",
    "value": 0.045322
  }, {
    "seriesId": "SEKRONPMI",
    "date": "2025-04-30",
    "value": 2.20391
  }, {
    "seriesId": "SEKRUBPMI",
    "date": "2022-03-25",
    "value": 0.095358
  }, {
    "seriesId": "SEKSARPMI",
    "date": "2023-11-24",
    "value": 2.7933
  }, {
    "seriesId": "SEKSGDPMI",
    "date": "2025-04-30",
    "value": 7.38374
  }, {
    "seriesId": "SEKSITPMI",
    "date": "2006-12-29",
    "value": 0.0378
  }, {
    "seriesId": "SEKSKKPMI",
    "date": "2008-12-30",
    "value": 0.3628
  }, {
    "seriesId": "SEKTHBPMI",
    "date": "2025-04-30",
    "value": 0.28866
  }, {
    "seriesId": "SEKTRLPMI",
    "date": "2004-12-30",
    "value": 0.000005
  }, {
    "seriesId": "SEKTRYPMI",
    "date": "2025-04-30",
    "value": 0.25073
  }, {
    "seriesId": "SEKUSDPMI",
    "date": "2025-04-30",
    "value": 9.64697
  }, {
    "seriesId": "SEKZARPMI",
    "date": "2025-04-30",
    "value": 0.51974
  }
]
```

__Valutakurser_20250501_224512_00002.xml__
```xml
<valutakurser>
  <valuta>
    <serie>SEKATSPMI</serie>
    <datum>2002-02-28</datum>
    <varde>0.66033</varde>
  </valuta>
  <valuta>
    <serie>SEKAUDPMI</serie>
    <datum>2025-04-30</datum>
    <varde>6.16446</varde>
  </valuta>
  <valuta>
    <serie>SEKBEFPMI</serie>
    <datum>2002-02-28</datum>
    <varde>0.22524</varde>
  </valuta>
  <valuta>
    <serie>SEKBGNPMI</serie>
    <datum>2025-04-30</datum>
    <varde>5.60972</varde>
  </valuta>
  <valuta>
    <serie>SEKBRLPMI</serie>
    <datum>2025-04-30</datum>
    <varde>1.71862</varde>
  </valuta>
  <valuta>
    <serie>SEKCADPMI</serie>
    <datum>2025-04-30</datum>
    <varde>6.97578</varde>
  </valuta>
  <valuta>
    <serie>SEKCHFPMI</serie>
    <datum>2025-04-30</datum>
    <varde>11.68548</varde>
  </valuta>
  <valuta>
    <serie>SEKCNYPMI</serie>
    <datum>2025-04-30</datum>
    <varde>1.32771</varde>
  </valuta>
  <valuta>
    <serie>SEKCYPPMI</serie>
    <datum>2007-12-28</datum>
    <varde>16.19</varde>
  </valuta>
  <valuta>
    <serie>SEKCZKPMI</serie>
    <datum>2025-04-30</datum>
    <varde>0.44027</varde>
  </valuta>
  <valuta>
    <serie>SEKDEMPMI</serie>
    <datum>2002-02-28</datum>
    <varde>4.64577</varde>
  </valuta>
  <valuta>
    <serie>SEKDKKPMI</serie>
    <datum>2025-04-30</datum>
    <varde>1.47</varde>
  </valuta>
  <valuta>
    <serie>SEKEEKPMI</serie>
    <datum>2010-12-30</datum>
    <varde>0.5755</varde>
  </valuta>
  <valuta>
    <serie>SEKESPPMI</serie>
    <datum>2002-02-28</datum>
    <varde>0.05461</varde>
  </valuta>
  <valuta>
    <serie>SEKETT</serie>
    <datum>2025-04-30</datum>
    <varde>1</varde>
  </valuta>
  <valuta>
    <serie>SEKEURPMI</serie>
    <datum>2025-04-30</datum>
    <varde>10.9715</varde>
  </valuta>
  <valuta>
    <serie>SEKFIMPMI</serie>
    <datum>2002-02-28</datum>
    <varde>1.52821</varde>
  </valuta>
  <valuta>
    <serie>SEKFRFPMI</serie>
    <datum>2002-02-28</datum>
    <varde>1.3852</varde>
  </valuta>
  <valuta>
    <serie>SEKGBPPMI</serie>
    <datum>2025-04-30</datum>
    <varde>12.88037</varde>
  </valuta>
  <valuta>
    <serie>SEKGRDPMI</serie>
    <datum>2002-02-28</datum>
    <varde>0.026666</varde>
  </valuta>
  <valuta>
    <serie>SEKHKDPMI</serie>
    <datum>2025-04-30</datum>
    <varde>1.24374</varde>
  </valuta>
  <valuta>
    <serie>SEKHUFPMI</serie>
    <datum>2025-04-30</datum>
    <varde>0.02715</varde>
  </valuta>
  <valuta>
    <serie>SEKIDRPMI</serie>
    <datum>2025-04-30</datum>
    <varde>0.00058</varde>
  </valuta>
  <valuta>
    <serie>SEKIEPPMI</serie>
    <datum>2002-02-28</datum>
    <varde>11.5373</varde>
  </valuta>
  <valuta>
    <serie>SEKILSPMI</serie>
    <datum>2025-04-30</datum>
    <varde>2.66098</varde>
  </valuta>
  <valuta>
    <serie>SEKINRPMI</serie>
    <datum>2025-04-30</datum>
    <varde>0.11412</varde>
  </valuta>
  <valuta>
    <serie>SEKISKPMI</serie>
    <datum>2025-04-30</datum>
    <varde>0.0752</varde>
  </valuta>
  <valuta>
    <serie>SEKITLPMI</serie>
    <datum>2002-02-28</datum>
    <varde>0.004693</varde>
  </valuta>
  <valuta>
    <serie>SEKJPYPMI</serie>
    <datum>2025-04-30</datum>
    <varde>0.06744</varde>
  </valuta>
  <valuta>
    <serie>SEKKRWPMI</serie>
    <datum>2025-04-30</datum>
    <varde>0.00678</varde>
  </valuta>
  <valuta>
    <serie>SEKKWDPMI</serie>
    <datum>2005-02-28</datum>
    <varde>23.35</varde>
  </valuta>
  <valuta>
    <serie>SEKLTLPMI</serie>
    <datum>2014-12-30</datum>
    <varde>2.7555</varde>
  </valuta>
  <valuta>
    <serie>SEKLVLPMI</serie>
    <datum>2013-12-30</datum>
    <varde>12.7288</varde>
  </valuta>
  <valuta>
    <serie>SEKMADPMI</serie>
    <datum>2023-11-24</datum>
    <varde>1.0386</varde>
  </valuta>
  <valuta>
    <serie>SEKMXNPMI</serie>
    <datum>2025-04-30</datum>
    <varde>0.49417</varde>
  </valuta>
  <valuta>
    <serie>SEKMYRPMI</serie>
    <datum>2025-04-30</datum>
    <varde>2.23571</varde>
  </valuta>
  <valuta>
    <serie>SEKNLGPMI</serie>
    <datum>2002-02-28</datum>
    <varde>4.1232</varde>
  </valuta>
  <valuta>
    <serie>SEKNOKPMI</serie>
    <datum>2025-04-30</datum>
    <varde>0.92908</varde>
  </valuta>
  <valuta>
    <serie>SEKNZDPMI</serie>
    <datum>2025-04-30</datum>
    <varde>5.70867</varde>
  </valuta>
  <valuta>
    <serie>SEKPHPPMI</serie>
    <datum>2025-04-30</datum>
    <varde>0.17268</varde>
  </valuta>
  <valuta>
    <serie>SEKPLNPMI</serie>
    <datum>2025-04-30</datum>
    <varde>2.56625</varde>
  </valuta>
  <valuta>
    <serie>SEKPTEPMI</serie>
    <datum>2002-02-28</datum>
    <varde>0.045322</varde>
  </valuta>
  <valuta>
    <serie>SEKRONPMI</serie>
    <datum>2025-04-30</datum>
    <varde>2.20391</varde>
  </valuta>
  <valuta>
    <serie>SEKRUBPMI</serie>
    <datum>2022-03-25</datum>
    <varde>0.095358</varde>
  </valuta>
  <valuta>
    <serie>SEKSARPMI</serie>
    <datum>2023-11-24</datum>
    <varde>2.7933</varde>
  </valuta>
  <valuta>
    <serie>SEKSGDPMI</serie>
    <datum>2025-04-30</datum>
    <varde>7.38374</varde>
  </valuta>
  <valuta>
    <serie>SEKSITPMI</serie>
    <datum>2006-12-29</datum>
    <varde>0.0378</varde>
  </valuta>
  <valuta>
    <serie>SEKSKKPMI</serie>
    <datum>2008-12-30</datum>
    <varde>0.3628</varde>
  </valuta>
  <valuta>
    <serie>SEKTHBPMI</serie>
    <datum>2025-04-30</datum>
    <varde>0.28866</varde>
  </valuta>
  <valuta>
    <serie>SEKTRLPMI</serie>
    <datum>2004-12-30</datum>
    <varde>0.0000050000</varde>
  </valuta>
  <valuta>
    <serie>SEKTRYPMI</serie>
    <datum>2025-04-30</datum>
    <varde>0.25073</varde>
  </valuta>
  <valuta>
    <serie>SEKUSDPMI</serie>
    <datum>2025-04-30</datum>
    <varde>9.64697</varde>
  </valuta>
  <valuta>
    <serie>SEKZARPMI</serie>
    <datum>2025-04-30</datum>
    <varde>0.51974</varde>
  </valuta>
</valutakurser>
```
___

__riksbanken_ext.sh__ & __json_to_xml.sh__
```
$ sudo ./riksbanken_ext.sh
Datum 2025-05-01
Kontrollerar om det är bankdag.....
 Ej bankdag..... avbryter

$ sudo ./riksbanken_ext.sh 20240427
Kontrollerar om datum stämmer enligt ISO 8601 (20240427)
 Stämmer inte enligt ISO 8601! Ange datum i formatet ÅÅÅÅ-MM-DD

$ sudo ./riksbanken_ext.sh 2024-04-27
Kontrollerar om datum stämmer enligt ISO 8601 (2024-04-27)
 Stämmer enligt ISO 8601....
Datum 2024-04-27
Kontrollerar om det är bankdag.....
 Ej bankdag..... avbryter

$ sudo ./riksbanken_ext.sh 2024-04-28
Kontrollerar om datum stämmer enligt ISO 8601 (2024-04-28)
 Stämmer enligt ISO 8601....
Datum 2024-04-28
Kontrollerar om det är bankdag.....
 Ej bankdag..... avbryter

$ sudo ./riksbanken_ext.sh 2024-04-29
Kontrollerar om datum stämmer enligt ISO 8601 (2024-04-29)
 Stämmer enligt ISO 8601....
Datum 2024-04-29
Kontrollerar om det är bankdag.....
 Bankdag....ok
Hämtade valutakurser skrivs till filen Valutakurser_ext_20240429_224717_00002.json

$ sudo ./json_to_xml.sh 20240429_224717_00002.json
JSON-filen 20240429_224717_00002.json finns inte.
$ sudo ./json_to_xml.sh  Valutakurser_ext_20240429_224717_00002.json
XML-filen har skapats - Valutakurser_ext_20240429_224717_00002.xml
```


__Valutakurser_ext_20240429_224717_00002.json__
```json
[
  {
    "seriesId": "SEKEURPMI",
    "date": "2024-04-29",
    "value": 11.685
  }, {
    "seriesId": "SEKNOKPMI",
    "date": "2024-04-29",
    "value": 0.99164
  }, {
    "seriesId": "SEKAUDPMI",
    "date": "2024-04-29",
    "value": 7.15905
  }, {
    "seriesId": "SEKBGNPMI",
    "date": "2024-04-29",
    "value": 5.97454
  }, {
    "seriesId": "SEKBRLPMI",
    "date": "2024-04-29",
    "value": 2.13596
  }, {
    "seriesId": "SEKCADPMI",
    "date": "2024-04-29",
    "value": 7.98428
  }, {
    "seriesId": "SEKCHFPMI",
    "date": "2024-04-29",
    "value": 11.95274
  }, {
    "seriesId": "SEKCNYPMI",
    "date": "2024-04-29",
    "value": 1.50528
  }, {
    "seriesId": "SEKCZKPMI",
    "date": "2024-04-29",
    "value": 0.46415
  }, {
    "seriesId": "SEKDKKPMI",
    "date": "2024-04-29",
    "value": 1.56675
  }, {
    "seriesId": "SEKETT",
    "date": "2024-04-29",
    "value": 1
  }, {
    "seriesId": "SEKGBPPMI",
    "date": "2024-04-29",
    "value": 13.66779
  }, {
    "seriesId": "SEKHKDPMI",
    "date": "2024-04-29",
    "value": 1.39266
  }, {
    "seriesId": "SEKHUFPMI",
    "date": "2024-04-29",
    "value": 0.02984
  }, {
    "seriesId": "SEKIDRPMI",
    "date": "2024-04-29",
    "value": 0.00067
  }, {
    "seriesId": "SEKILSPMI",
    "date": "2024-04-29",
    "value": 2.89835
  }, {
    "seriesId": "SEKINRPMI",
    "date": "2024-04-29",
    "value": 0.13062
  }, {
    "seriesId": "SEKISKPMI",
    "date": "2024-04-29",
    "value": 0.07774
  }, {
    "seriesId": "SEKJPYPMI",
    "date": "2024-04-29",
    "value": 0.06975
  }, {
    "seriesId": "SEKKRWPMI",
    "date": "2024-04-29",
    "value": 0.00792
  }, {
    "seriesId": "SEKMXNPMI",
    "date": "2024-04-29",
    "value": 0.63782
  }, {
    "seriesId": "SEKMYRPMI",
    "date": "2024-04-29",
    "value": 2.28633
  }, {
    "seriesId": "SEKNZDPMI",
    "date": "2024-04-29",
    "value": 6.51628
  }, {
    "seriesId": "SEKPHPPMI",
    "date": "2024-04-29",
    "value": 0.1889
  }, {
    "seriesId": "SEKPLNPMI",
    "date": "2024-04-29",
    "value": 2.70142
  }, {
    "seriesId": "SEKRONPMI",
    "date": "2024-04-29",
    "value": 2.34832
  }, {
    "seriesId": "SEKSGDPMI",
    "date": "2024-04-29",
    "value": 8.0155
  }, {
    "seriesId": "SEKTHBPMI",
    "date": "2024-04-29",
    "value": 0.29436
  }, {
    "seriesId": "SEKTRYPMI",
    "date": "2024-04-29",
    "value": 0.33664
  }, {
    "seriesId": "SEKUSDPMI",
    "date": "2024-04-29",
    "value": 10.90019
  }, {
    "seriesId": "SEKZARPMI",
    "date": "2024-04-29",
    "value": 0.58278
  }
]
```

Valutakurser_ext_20240429_224717_00002.xml
```xml
<valutakurser>
  <valuta>
    <serie>SEKEURPMI</serie>
    <datum>2024-04-29</datum>
    <varde>11.685</varde>
  </valuta>
  <valuta>
    <serie>SEKNOKPMI</serie>
    <datum>2024-04-29</datum>
    <varde>0.99164</varde>
  </valuta>
  <valuta>
    <serie>SEKAUDPMI</serie>
    <datum>2024-04-29</datum>
    <varde>7.15905</varde>
  </valuta>
  <valuta>
    <serie>SEKBGNPMI</serie>
    <datum>2024-04-29</datum>
    <varde>5.97454</varde>
  </valuta>
  <valuta>
    <serie>SEKBRLPMI</serie>
    <datum>2024-04-29</datum>
    <varde>2.13596</varde>
  </valuta>
  <valuta>
    <serie>SEKCADPMI</serie>
    <datum>2024-04-29</datum>
    <varde>7.98428</varde>
  </valuta>
  <valuta>
    <serie>SEKCHFPMI</serie>
    <datum>2024-04-29</datum>
    <varde>11.95274</varde>
  </valuta>
  <valuta>
    <serie>SEKCNYPMI</serie>
    <datum>2024-04-29</datum>
    <varde>1.50528</varde>
  </valuta>
  <valuta>
    <serie>SEKCZKPMI</serie>
    <datum>2024-04-29</datum>
    <varde>0.46415</varde>
  </valuta>
  <valuta>
    <serie>SEKDKKPMI</serie>
    <datum>2024-04-29</datum>
    <varde>1.56675</varde>
  </valuta>
  <valuta>
    <serie>SEKETT</serie>
    <datum>2024-04-29</datum>
    <varde>1</varde>
  </valuta>
  <valuta>
    <serie>SEKGBPPMI</serie>
    <datum>2024-04-29</datum>
    <varde>13.66779</varde>
  </valuta>
  <valuta>
    <serie>SEKHKDPMI</serie>
    <datum>2024-04-29</datum>
    <varde>1.39266</varde>
  </valuta>
  <valuta>
    <serie>SEKHUFPMI</serie>
    <datum>2024-04-29</datum>
    <varde>0.02984</varde>
  </valuta>
  <valuta>
    <serie>SEKIDRPMI</serie>
    <datum>2024-04-29</datum>
    <varde>0.00067</varde>
  </valuta>
  <valuta>
    <serie>SEKILSPMI</serie>
    <datum>2024-04-29</datum>
    <varde>2.89835</varde>
  </valuta>
  <valuta>
    <serie>SEKINRPMI</serie>
    <datum>2024-04-29</datum>
    <varde>0.13062</varde>
  </valuta>
  <valuta>
    <serie>SEKISKPMI</serie>
    <datum>2024-04-29</datum>
    <varde>0.07774</varde>
  </valuta>
  <valuta>
    <serie>SEKJPYPMI</serie>
    <datum>2024-04-29</datum>
    <varde>0.06975</varde>
  </valuta>
  <valuta>
    <serie>SEKKRWPMI</serie>
    <datum>2024-04-29</datum>
    <varde>0.00792</varde>
  </valuta>
  <valuta>
    <serie>SEKMXNPMI</serie>
    <datum>2024-04-29</datum>
    <varde>0.63782</varde>
  </valuta>
  <valuta>
    <serie>SEKMYRPMI</serie>
    <datum>2024-04-29</datum>
    <varde>2.28633</varde>
  </valuta>
  <valuta>
    <serie>SEKNZDPMI</serie>
    <datum>2024-04-29</datum>
    <varde>6.51628</varde>
  </valuta>
  <valuta>
    <serie>SEKPHPPMI</serie>
    <datum>2024-04-29</datum>
    <varde>0.1889</varde>
  </valuta>
  <valuta>
    <serie>SEKPLNPMI</serie>
    <datum>2024-04-29</datum>
    <varde>2.70142</varde>
  </valuta>
  <valuta>
    <serie>SEKRONPMI</serie>
    <datum>2024-04-29</datum>
    <varde>2.34832</varde>
  </valuta>
  <valuta>
    <serie>SEKSGDPMI</serie>
    <datum>2024-04-29</datum>
    <varde>8.0155</varde>
  </valuta>
  <valuta>
    <serie>SEKTHBPMI</serie>
    <datum>2024-04-29</datum>
    <varde>0.29436</varde>
  </valuta>
  <valuta>
    <serie>SEKTRYPMI</serie>
    <datum>2024-04-29</datum>
    <varde>0.33664</varde>
  </valuta>
  <valuta>
    <serie>SEKUSDPMI</serie>
    <datum>2024-04-29</datum>
    <varde>10.90019</varde>
  </valuta>
  <valuta>
    <serie>SEKZARPMI</serie>
    <datum>2024-04-29</datum>
    <varde>0.58278</varde>
  </valuta>
</valutakurser>
```

___

