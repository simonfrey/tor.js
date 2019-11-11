curl https://check.torproject.org/exit-addresses | sed '/ExitAddress/!d' | sed 's/ /\n/g' | sed '/\./!d' > exit_node_ips.txt
