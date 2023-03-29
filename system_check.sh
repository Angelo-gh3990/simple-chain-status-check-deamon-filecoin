# /bin/bash
#
while true
do
#
CHAIN_STATUS=`lotus-miner info | grep Chain | awk '{print $3}'`
#
CHECK=ok
#
TIME=$(date +"%T")
#
if [[ "$CHAIN_STATUS" == *"$CHECK"* ]]
then
    echo "Chain status ok = 1"
    echo 1 >/raid1-data/scripts/chain_sync_status
else
    echo "Chain status error = 0"
    echo 0 >/raid1-data/scripts/chain_sync_status
fi
    sleep 120
done
