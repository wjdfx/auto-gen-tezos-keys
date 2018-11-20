#!/usr/bin/expect

#run ./auto-gen-tezos-keys.sh

for {set i 0} {$i<=1000} {incr i} {
spawn /mnt/tezos/tezos-client gen keys t$i -f
expect "encrypt"
send "KeyPassword\r" #input keypassword
sleep 1
expect "Confirm:"
send "KeyPassword\r" #input keypassword
expect eof
}
