cat $1 | grep -o -P "answer: <extra_id_99>.*" | awk -F "<" '{print $2}' > formatted_$1
