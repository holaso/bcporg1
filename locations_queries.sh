# locations list as csv
gc locations list -a | jq -r '. | map({id: .id, name: .name})' | jq -r '(.[0] | keys_unsorted) as $keys | ([$keys] + map([.[ $keys[] ]])) [] | @csv'
