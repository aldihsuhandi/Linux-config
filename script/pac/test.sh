# !/bin/sh
temp=""
for ((i = 2;i <= $#;i++)); do
    temp+=${!i}
    temp+=" "
done

cat $temp
