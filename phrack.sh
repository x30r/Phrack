#!/bin/sh
mkdir Phrack
cd Phrack
for i in `seq 1 69`
do
        FILE="phrack${i}.tar.gz"
	mkdir phrack${i}
	cd phrack${i}
	wget http://phrack.org/archives/tgz/${FILE}
	tar xzvf ${FILE}
	rm ${FILE}
	cd ..
done
