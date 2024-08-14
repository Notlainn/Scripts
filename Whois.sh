host=$1
refer1="whois.iana.org"
echo $host | nc $refer1 43 | grep "refer" | cut -d ":" -f2 | sed 's/ //g' >  temprefer

for refer2 in $(cat temprefer);do echo $host | nc "$refer2" 43;done
rm temprefer
