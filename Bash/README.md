# Bash 
Konvertering mellan JSON och XML och vice versa

| Command | Description |
| --- | --- |
| json_to_xml.sh | Konverterar valutafilen ifrån JSON till XML |
| riksbanken.sh | Hämtar alla Riksbankens valutor, även sådana som inte uppdaterar  |
| riksbanken_ext.sh | Hämtar Riksbankens aktuella valutor för ett visst datum |

riksbanken.sh & json_to_xml.sh
```
$ sudo ./riksbanken.sh
Hämtade valutakurser skrivs till filen Valutakurser_20250501_221028_00001.json

$ sudo ./json_to_xml.sh Valutakurser_20250501_221028_00001.json
XML-filen har skapats - Valutakurser_20250501_221028_00001.xml
```

Valutakurser_20250501_221028_00001.json
```json
[{
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

Valutakurser_20250501_221028_00001.xml
```xml
<valutakurser>
  <valuta>
    <serie>SEKATSPMI</serie>
    <datum>2002-02-28</datum>
    <datum>0.66033</datum>
  </valuta>
  <valuta>
    <serie>SEKAUDPMI</serie>
    <datum>2025-04-30</datum>
    <datum>6.16446</datum>
  </valuta>
  <valuta>
    <serie>SEKBEFPMI</serie>
    <datum>2002-02-28</datum>
    <datum>0.22524</datum>
  </valuta>
  <valuta>
    <serie>SEKBGNPMI</serie>
    <datum>2025-04-30</datum>
    <datum>5.60972</datum>
  </valuta>
  <valuta>
    <serie>SEKBRLPMI</serie>
    <datum>2025-04-30</datum>
    <datum>1.71862</datum>
  </valuta>
  <valuta>
    <serie>SEKCADPMI</serie>
    <datum>2025-04-30</datum>
    <datum>6.97578</datum>
  </valuta>
  <valuta>
    <serie>SEKCHFPMI</serie>
    <datum>2025-04-30</datum>
    <datum>11.68548</datum>
  </valuta>
  <valuta>
    <serie>SEKCNYPMI</serie>
    <datum>2025-04-30</datum>
    <datum>1.32771</datum>
  </valuta>
  <valuta>
    <serie>SEKCYPPMI</serie>
    <datum>2007-12-28</datum>
    <datum>16.19</datum>
  </valuta>
  <valuta>
    <serie>SEKCZKPMI</serie>
    <datum>2025-04-30</datum>
    <datum>0.44027</datum>
  </valuta>
  <valuta>
    <serie>SEKDEMPMI</serie>
    <datum>2002-02-28</datum>
    <datum>4.64577</datum>
  </valuta>
  <valuta>
    <serie>SEKDKKPMI</serie>
    <datum>2025-04-30</datum>
    <datum>1.47</datum>
  </valuta>
  <valuta>
    <serie>SEKEEKPMI</serie>
    <datum>2010-12-30</datum>
    <datum>0.5755</datum>
  </valuta>
  <valuta>
    <serie>SEKESPPMI</serie>
    <datum>2002-02-28</datum>
    <datum>0.05461</datum>
  </valuta>
  <valuta>
    <serie>SEKETT</serie>
    <datum>2025-04-30</datum>
    <datum>1</datum>
  </valuta>
  <valuta>
    <serie>SEKEURPMI</serie>
    <datum>2025-04-30</datum>
    <datum>10.9715</datum>
  </valuta>
  <valuta>
    <serie>SEKFIMPMI</serie>
    <datum>2002-02-28</datum>
    <datum>1.52821</datum>
  </valuta>
  <valuta>
    <serie>SEKFRFPMI</serie>
    <datum>2002-02-28</datum>
    <datum>1.3852</datum>
  </valuta>
  <valuta>
    <serie>SEKGBPPMI</serie>
    <datum>2025-04-30</datum>
    <datum>12.88037</datum>
  </valuta>
  <valuta>
    <serie>SEKGRDPMI</serie>
    <datum>2002-02-28</datum>
    <datum>0.026666</datum>
  </valuta>
  <valuta>
    <serie>SEKHKDPMI</serie>
    <datum>2025-04-30</datum>
    <datum>1.24374</datum>
  </valuta>
  <valuta>
    <serie>SEKHUFPMI</serie>
    <datum>2025-04-30</datum>
    <datum>0.02715</datum>
  </valuta>
  <valuta>
    <serie>SEKIDRPMI</serie>
    <datum>2025-04-30</datum>
    <datum>0.00058</datum>
  </valuta>
  <valuta>
    <serie>SEKIEPPMI</serie>
    <datum>2002-02-28</datum>
    <datum>11.5373</datum>
  </valuta>
  <valuta>
    <serie>SEKILSPMI</serie>
    <datum>2025-04-30</datum>
    <datum>2.66098</datum>
  </valuta>
  <valuta>
    <serie>SEKINRPMI</serie>
    <datum>2025-04-30</datum>
    <datum>0.11412</datum>
  </valuta>
  <valuta>
    <serie>SEKISKPMI</serie>
    <datum>2025-04-30</datum>
    <datum>0.0752</datum>
  </valuta>
  <valuta>
    <serie>SEKITLPMI</serie>
    <datum>2002-02-28</datum>
    <datum>0.004693</datum>
  </valuta>
  <valuta>
    <serie>SEKJPYPMI</serie>
    <datum>2025-04-30</datum>
    <datum>0.06744</datum>
  </valuta>
  <valuta>
    <serie>SEKKRWPMI</serie>
    <datum>2025-04-30</datum>
    <datum>0.00678</datum>
  </valuta>
  <valuta>
    <serie>SEKKWDPMI</serie>
    <datum>2005-02-28</datum>
    <datum>23.35</datum>
  </valuta>
  <valuta>
    <serie>SEKLTLPMI</serie>
    <datum>2014-12-30</datum>
    <datum>2.7555</datum>
  </valuta>
  <valuta>
    <serie>SEKLVLPMI</serie>
    <datum>2013-12-30</datum>
    <datum>12.7288</datum>
  </valuta>
  <valuta>
    <serie>SEKMADPMI</serie>
    <datum>2023-11-24</datum>
    <datum>1.0386</datum>
  </valuta>
  <valuta>
    <serie>SEKMXNPMI</serie>
    <datum>2025-04-30</datum>
    <datum>0.49417</datum>
  </valuta>
  <valuta>
    <serie>SEKMYRPMI</serie>
    <datum>2025-04-30</datum>
    <datum>2.23571</datum>
  </valuta>
  <valuta>
    <serie>SEKNLGPMI</serie>
    <datum>2002-02-28</datum>
    <datum>4.1232</datum>
  </valuta>
  <valuta>
    <serie>SEKNOKPMI</serie>
    <datum>2025-04-30</datum>
    <datum>0.92908</datum>
  </valuta>
  <valuta>
    <serie>SEKNZDPMI</serie>
    <datum>2025-04-30</datum>
    <datum>5.70867</datum>
  </valuta>
  <valuta>
    <serie>SEKPHPPMI</serie>
    <datum>2025-04-30</datum>
    <datum>0.17268</datum>
  </valuta>
  <valuta>
    <serie>SEKPLNPMI</serie>
    <datum>2025-04-30</datum>
    <datum>2.56625</datum>
  </valuta>
  <valuta>
    <serie>SEKPTEPMI</serie>
    <datum>2002-02-28</datum>
    <datum>0.045322</datum>
  </valuta>
  <valuta>
    <serie>SEKRONPMI</serie>
    <datum>2025-04-30</datum>
    <datum>2.20391</datum>
  </valuta>
  <valuta>
    <serie>SEKRUBPMI</serie>
    <datum>2022-03-25</datum>
    <datum>0.095358</datum>
  </valuta>
  <valuta>
    <serie>SEKSARPMI</serie>
    <datum>2023-11-24</datum>
    <datum>2.7933</datum>
  </valuta>
  <valuta>
    <serie>SEKSGDPMI</serie>
    <datum>2025-04-30</datum>
    <datum>7.38374</datum>
  </valuta>
  <valuta>
    <serie>SEKSITPMI</serie>
    <datum>2006-12-29</datum>
    <datum>0.0378</datum>
  </valuta>
  <valuta>
    <serie>SEKSKKPMI</serie>
    <datum>2008-12-30</datum>
    <datum>0.3628</datum>
  </valuta>
  <valuta>
    <serie>SEKTHBPMI</serie>
    <datum>2025-04-30</datum>
    <datum>0.28866</datum>
  </valuta>
  <valuta>
    <serie>SEKTRLPMI</serie>
    <datum>2004-12-30</datum>
    <datum>0.0000050000</datum>
  </valuta>
  <valuta>
    <serie>SEKTRYPMI</serie>
    <datum>2025-04-30</datum>
    <datum>0.25073</datum>
  </valuta>
  <valuta>
    <serie>SEKUSDPMI</serie>
    <datum>2025-04-30</datum>
    <datum>9.64697</datum>
  </valuta>
  <valuta>
    <serie>SEKZARPMI</serie>
    <datum>2025-04-30</datum>
    <datum>0.51974</datum>
  </valuta>
</valutakurser>

```

riksbanken_ext.sh & json_to_xml.sh
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
Hämtade valutakurser skrivs till filen Valutakurser_ext_20240429_221159_00001.json

$ sudo ./json_to_xml.sh Valutakurser_ext_20240429_221159_00001.json
XML-filen har skapats - Valutakurser_ext_20240429_221159_00001.xml
```


Valutakurser_ext_20240429_221159_00001.json
```json
[{
    "seriesId": "SEKCADPMI",
    "date": "2024-04-29",
    "value": 7.98428
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
    "seriesId": "SEKEURPMI",
    "date": "2024-04-29",
    "value": 11.685
  }, {
    "seriesId": "SEKGBPPMI",
    "date": "2024-04-29",
    "value": 13.66779
  }, {
    "seriesId": "SEKINRPMI",
    "date": "2024-04-29",
    "value": 0.13062
  }, {
    "seriesId": "SEKJPYPMI",
    "date": "2024-04-29",
    "value": 0.06975
  }, {
    "seriesId": "SEKNOKPMI",
    "date": "2024-04-29",
    "value": 0.99164
  }, {
    "seriesId": "SEKSGDPMI",
    "date": "2024-04-29",
    "value": 8.0155
  }, {
    "seriesId": "SEKUSDPMI",
    "date": "2024-04-29",
    "value": 10.90019
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
    "seriesId": "SEKCHFPMI",
    "date": "2024-04-29",
    "value": 11.95274
  }, {
    "seriesId": "SEKCNYPMI",
    "date": "2024-04-29",
    "value": 1.50528
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
    "seriesId": "SEKISKPMI",
    "date": "2024-04-29",
    "value": 0.07774
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
    "seriesId": "SEKTHBPMI",
    "date": "2024-04-29",
    "value": 0.29436
  }, {
    "seriesId": "SEKTRYPMI",
    "date": "2024-04-29",
    "value": 0.33664
  }, {
    "seriesId": "SEKZARPMI",
    "date": "2024-04-29",
    "value": 0.58278
  }
]
```

Valutakurser_ext_20240429_221159_00001.xml
```xml
<valutakurser>
  <valuta>
    <serie>SEKCADPMI</serie>
    <datum>2024-04-29</datum>
    <datum>7.98428</datum>
  </valuta>
  <valuta>
    <serie>SEKCZKPMI</serie>
    <datum>2024-04-29</datum>
    <datum>0.46415</datum>
  </valuta>
  <valuta>
    <serie>SEKDKKPMI</serie>
    <datum>2024-04-29</datum>
    <datum>1.56675</datum>
  </valuta>
  <valuta>
    <serie>SEKETT</serie>
    <datum>2024-04-29</datum>
    <datum>1</datum>
  </valuta>
  <valuta>
    <serie>SEKEURPMI</serie>
    <datum>2024-04-29</datum>
    <datum>11.685</datum>
  </valuta>
  <valuta>
    <serie>SEKGBPPMI</serie>
    <datum>2024-04-29</datum>
    <datum>13.66779</datum>
  </valuta>
  <valuta>
    <serie>SEKINRPMI</serie>
    <datum>2024-04-29</datum>
    <datum>0.13062</datum>
  </valuta>
  <valuta>
    <serie>SEKJPYPMI</serie>
    <datum>2024-04-29</datum>
    <datum>0.06975</datum>
  </valuta>
  <valuta>
    <serie>SEKNOKPMI</serie>
    <datum>2024-04-29</datum>
    <datum>0.99164</datum>
  </valuta>
  <valuta>
    <serie>SEKSGDPMI</serie>
    <datum>2024-04-29</datum>
    <datum>8.0155</datum>
  </valuta>
  <valuta>
    <serie>SEKUSDPMI</serie>
    <datum>2024-04-29</datum>
    <datum>10.90019</datum>
  </valuta>
  <valuta>
    <serie>SEKAUDPMI</serie>
    <datum>2024-04-29</datum>
    <datum>7.15905</datum>
  </valuta>
  <valuta>
    <serie>SEKBGNPMI</serie>
    <datum>2024-04-29</datum>
    <datum>5.97454</datum>
  </valuta>
  <valuta>
    <serie>SEKBRLPMI</serie>
    <datum>2024-04-29</datum>
    <datum>2.13596</datum>
  </valuta>
  <valuta>
    <serie>SEKCHFPMI</serie>
    <datum>2024-04-29</datum>
    <datum>11.95274</datum>
  </valuta>
  <valuta>
    <serie>SEKCNYPMI</serie>
    <datum>2024-04-29</datum>
    <datum>1.50528</datum>
  </valuta>
  <valuta>
    <serie>SEKHKDPMI</serie>
    <datum>2024-04-29</datum>
    <datum>1.39266</datum>
  </valuta>
  <valuta>
    <serie>SEKHUFPMI</serie>
    <datum>2024-04-29</datum>
    <datum>0.02984</datum>
  </valuta>
  <valuta>
    <serie>SEKIDRPMI</serie>
    <datum>2024-04-29</datum>
    <datum>0.00067</datum>
  </valuta>
  <valuta>
    <serie>SEKILSPMI</serie>
    <datum>2024-04-29</datum>
    <datum>2.89835</datum>
  </valuta>
  <valuta>
    <serie>SEKISKPMI</serie>
    <datum>2024-04-29</datum>
    <datum>0.07774</datum>
  </valuta>
  <valuta>
    <serie>SEKKRWPMI</serie>
    <datum>2024-04-29</datum>
    <datum>0.00792</datum>
  </valuta>
  <valuta>
    <serie>SEKMXNPMI</serie>
    <datum>2024-04-29</datum>
    <datum>0.63782</datum>
  </valuta>
  <valuta>
    <serie>SEKMYRPMI</serie>
    <datum>2024-04-29</datum>
    <datum>2.28633</datum>
  </valuta>
  <valuta>
    <serie>SEKNZDPMI</serie>
    <datum>2024-04-29</datum>
    <datum>6.51628</datum>
  </valuta>
  <valuta>
    <serie>SEKPHPPMI</serie>
    <datum>2024-04-29</datum>
    <datum>0.1889</datum>
  </valuta>
  <valuta>
    <serie>SEKPLNPMI</serie>
    <datum>2024-04-29</datum>
    <datum>2.70142</datum>
  </valuta>
  <valuta>
    <serie>SEKRONPMI</serie>
    <datum>2024-04-29</datum>
    <datum>2.34832</datum>
  </valuta>
  <valuta>
    <serie>SEKTHBPMI</serie>
    <datum>2024-04-29</datum>
    <datum>0.29436</datum>
  </valuta>
  <valuta>
    <serie>SEKTRYPMI</serie>
    <datum>2024-04-29</datum>
    <datum>0.33664</datum>
  </valuta>
  <valuta>
    <serie>SEKZARPMI</serie>
    <datum>2024-04-29</datum>
    <datum>0.58278</datum>
  </valuta>
</valutakurser>
```

___

