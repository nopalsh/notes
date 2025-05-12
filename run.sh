RPC="http://127.0.0.1:8080";
block=$(curl -s -H 'Content-Type: application/json' -d '{"jsonrpc":"2.0","method":"node_getL2Tips","params":[],"id":67}' $RPC | jq -r .result.proven.number);
proof=$(curl -s -H 'Content-Type: application/json' -d "{\"jsonrpc\":\"2.0\",\"method\":\"node_getArchiveSiblingPath\",\"params\":[\"$block\",\"$block\"],\"id\":67}" $RPC | jq -r .result);
echo "Block Number: $block";
echo "Proof: $proof";
