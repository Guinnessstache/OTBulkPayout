curl -X GET "https://othub-api.origin-trail.network/api/nodes/DataHolders/0xCHANGEMETOYOURerc725ID" -H "accept: text/plain" | grep -o -P '(?<=OfferId":").*?(?=","FinalizedTimestamp")' > offerids.txt

cat offerids.txt | while read line; do docker exec otnode curl -s -X GET http://127.0.0.1:8900/api/latest/payout?offer_id=$line; done
