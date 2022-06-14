{\rtf1\ansi\ansicpg1252\cocoartf2638
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sa240\partightenfactor0

\f0\fs24 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 #!/bin/bash\
#This script generates numbers from 1-to 10 in random order.\
#Author: Gwendolyn Mapuranga\
#Date:14 June 2022
\fs26 \
\pard\pardeftab720\partightenfactor0
\cf0 awk -v loop=10 -v range=10 'BEGIN\{\
  srand()\
  do \{\
    numb = 1 + int(rand() * range)\
    if (!(numb in prev)) \{\
       print numb\
       prev[numb] = 1\
       count++\
    \}\
  \} while (count<loop)\
\}'\
}