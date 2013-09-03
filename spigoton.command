#!/bin/bash
clear
SPEED="100Kbit/s"
# to change the speed, change the 100 above. 57 is roughly the speed of a dial-up connection, 3000 is the speed of an average DSL, 5000 for an average Cable Modem
sudo ipfw pipe 1 config bw $SPEED
sudo ipfw add pipe 1 ip from any to any out
sudo ipfw add pipe 1 ip from any to any in
