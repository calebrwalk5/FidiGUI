@goto main

:About_Script
cls
echo Words are generated using statistics of "English Open Word List" (EOWL) 
echo The randomness of word is weighted to reduce likelihood of generating 
echo strange words. The EOWL web page only provides the word list. 
echo I generate my own statistic from that word list.
echo=
echo The EOWL is found on:
echo http://dreamsteep.com/projects/the-english-open-word-list.html
echo=
echo This script is made by wthe22 at 2016-04-23
echo=
echo Visit http://winscr.blogspot.com/ for more scripts^^!
echo=
pause
goto :EOF

:main
@echo off
title Random Artificial Word Generator
setlocal EnableDelayedExpansion
cd /d "%~dp0"

echo Preparing....

rem Settings of word generator
set "characters=abcdefghijklmnopqrstuvwxyz"
set "lengthWeights= 0 106 1082 4438 9614 16185 22869 26216 25601 22662"
set "startWeights= 7276 7260 11337 7209 5147 5366 4733 4498 3682 1281 1572 4120 6873 2521 3679 10261 719 6782 15905 7276 4424 2355 3146 121 607 623"
set "next[a]Weights= 85 2932 4346 3113 736 800 2781 462 2524 122 976 8762 3494 9863 88 2702 95 9584 5672 9713 1681 1239 890 406 1186 523"
set "next[b]Weights= 3055 876 50 105 2873 27 17 34 2179 61 11 3070 47 42 2452 19 0 1807 576 164 1600 44 31 0 222 4"
set "next[c]Weights= 5134 5 612 11 3573 0 0 5545 2576 0 3082 1736 13 28 5664 3 62 2392 456 2125 2080 0 2 0 765 19"
set "next[d]Weights= 2039 104 68 923 6835 92 497 118 5138 78 9 1043 180 159 2200 64 0 1346 1907 33 1112 99 193 0 512 22"
set "next[e]Weights= 4577 895 2964 13086 2968 1202 1199 305 1150 127 250 5453 2807 9383 966 2029 220 20263 19068 5187 802 1129 902 1406 741 194"
set "next[f]Weights= 1335 14 7 8 1558 1235 4 9 2230 2 2 1516 7 12 1780 13 0 964 240 525 1305 0 5 0 350 0"
set "next[g]Weights= 2425 63 11 30 4001 38 1041 1069 2202 3 4 1726 203 649 1578 17 0 2010 2224 50 1204 2 70 0 597 8"
set "next[h]Weights= 3763 56 25 22 5531 69 12 14 3751 4 20 420 213 114 3555 37 1 713 651 715 977 4 124 0 1119 4"
set "next[i]Weights= 3365 1005 6590 3308 6105 1583 2274 72 42 32 495 4542 2482 21106 3252 1659 174 2452 9807 5988 537 1832 36 278 29 1999"
set "next[j]Weights= 541 0 0 0 375 0 0 1 194 4 0 0 0 1 471 0 0 8 3 0 480 0 2 0 3 0"
set "next[k]Weights= 776 99 22 23 2884 72 7 152 2080 5 54 506 69 301 294 42 0 129 1304 43 121 13 101 0 312 0"
set "next[l]Weights= 6875 185 360 882 10826 273 202 39 8729 4 390 4943 393 91 4956 346 7 58 2057 1016 2187 369 77 3 3787 20"
set "next[m]Weights= 4986 1615 21 20 5134 88 6 23 4398 7 14 125 1064 210 3209 2089 5 34 1189 19 1244 21 25 0 507 14"
set "next[n]Weights= 3738 385 3020 4079 7450 739 13248 352 5087 143 1020 418 190 1273 2721 318 99 348 4735 6398 1002 378 282 41 554 121"
set "next[o]Weights= 1134 1260 2226 1972 766 530 1996 182 1700 50 752 4543 3381 8909 3204 2634 82 7962 3780 3316 4976 1482 1929 404 440 258"
set "next[p]Weights= 3630 84 50 33 4868 58 30 2195 3404 17 19 2245 47 78 3340 1353 0 2886 1237 970 1356 0 64 0 464 1"
set "next[q]Weights= 11 0 0 0 0 1 0 0 14 0 0 0 0 0 2 0 0 0 1 0 1853 0 0 0 0 0"
set "next[r]Weights= 8754 878 1154 1828 11712 405 1027 395 9745 54 856 906 1509 1411 6644 678 51 1681 6514 2416 2180 472 204 0 1935 47"
set "next[s]Weights= 2634 136 2708 67 7705 112 81 4055 4323 32 842 1119 1780 595 2618 2543 354 65 4361 10291 2379 17 705 0 723 0"
set "next[t]Weights= 5525 158 762 45 12651 214 79 3556 9802 30 9 1149 215 141 4944 114 1 4563 4215 2454 2138 30 505 0 1557 159"
set "next[u]Weights= 1182 1329 1420 1132 1303 414 913 21 1282 24 222 3711 2890 5899 229 1405 10 4617 4457 2934 23 145 6 140 46 136"
set "next[v]Weights= 1556 0 0 3 4752 0 2 2 2207 0 0 9 0 4 834 0 0 46 14 0 155 40 0 0 52 2"
set "next[w]Weights= 2054 93 20 120 1400 50 16 687 1517 3 102 282 44 446 1182 58 0 307 470 55 38 2 12 0 70 11"
set "next[x]Weights= 223 5 163 0 487 9 4 53 546 0 2 25 8 3 182 246 2 4 31 268 98 2 14 0 123 0"
set "next[y]Weights= 620 173 330 193 676 54 174 41 645 9 39 635 592 463 426 596 2 439 1021 390 77 19 99 41 2 61"
set "next[z]Weights= 393 3 4 1 2129 0 4 7 657 0 6 171 10 1 531 6 0 0 4 0 57 4 4 0 140 362"

rem Offset characters by 1
set "characters=.!characters!"

set "statisticName=EOWL"
set "displayWords=5"

:menu
title Random Artificial Word Generator - !statisticName!
cls
echo 1. Start
echo=
echo A. About script
echo=
echo 0. Exit
echo=
echo Choose view mode:
set /p "userInput="
if /i "!userInput!" == "0" exit
if /i "!userInput!" == "A" call :About_Script
if /i "!userInput!" == "1" goto defaultMode
goto menu

:defaultMode
cls
echo Generated words  :
echo=
for /l %%n in (1,1,!displayWords!) do (
    call :randword
    echo !word!
    python image-from-text.py --text=%word% --no-mega
)
echo=
pause
goto defaultMode

rem ===============================================================================

:randword
call :randw !lengthWeights!
set "wordLength=!return!"
call :randw !startWeights!
set "word=!characters:~%return%,1!"
for /l %%l in (2,1,!wordLength!) do (
    set "lastLetter=!word:~-1,1!"
    for %%a in (!lastLetter!) do (
        call :randw !next[%%a]Weights!
        for %%n in (!return!) do set "word=!word!!characters:~%%n,1!"
    )
)
goto :EOF

rem Functions

:randw [Weights]
set "sum=0"
for %%n in (%*) do set /a "sum+=%%n"
call :rand 1 !sum!
set "rand=!return!"
set "sum=0"
set "item=1"
set "return=0"
for %%n in (%*) do (
    if "!return!" == "0" (
        set /a "sum+=%%n"
        if !rand! LEQ !sum! set "return=!item!"
        set /a "item+=1"
    )
)
goto :EOF

:rand [minimum] [maximum]
set /a return=!random!*65536 + !random!*2 + !random!/16384
set /a return%%= %2 - %1 + 1
set /a return+=%1
goto :EOF