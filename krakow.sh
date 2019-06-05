#!/bin/bash
echo "start"

while true; do
dare='temp,host=KRAKÓW,region=us-west value='$(( $RANDOM % 20 +5 ))
echo $dare
curl -i -XPOST 'ec2-54-173-132-160.compute-1.amazonaws.com:8086/write?db=mydb' --data-binary "$dare"

echo "Hi, I'm sleeping for 2 seconds.."
sleep 2
done
echo "all Done."

