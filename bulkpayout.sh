curl -X GET "https://v5api.othub.info/api/nodes/DataHolder/ReplaceNodeID/jobs" -H "accept: text/plain" | grep -o -P '(?<=OfferId":").*?(?=","FinalizedTimestamp")' > offerids.txt

cat offerids.txt | while read line; do docker exec otnode curl -s -X GET http://127.0.0.1:8900/api/latest/payout?offer_id=$line; done
