#bin/bash

sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -z
sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport --channel=13
/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I en0

for var in {1..100000}
do
	echo $var

	sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -z
	sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport --channel=13
	/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I en0

	sudo tcpdump -G 5 -W 1 -I -P -i en0 -w './dump.pcap'

	cp dump.pcap 'raw_log/data'$var'.pcap'

	tshark -r dump.pcap -T fields -e data > dump.txt

	python get_data.py

	mv data_file.txt 'data_plot/data'$var'.txt'
done	
