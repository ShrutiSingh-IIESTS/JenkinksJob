startTime='1616423400000'
endTime='1616441400000'
reconcileApi='http://localhost:8080/reconcile/allaffectedtournaments'

payload=$(cat <<EOF
{"startTime":"$startTime","endTime":"$endTime"}
EOF
)

echo $(curl -i -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d $payload $reconcileApi)

echo "Printing Response"
echo $response

http_status=$(echo "$response" | grep HTTP |  awk '{print $2}')
echo "Printing Http Status"
echo $http_status
