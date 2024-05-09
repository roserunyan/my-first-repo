#!bin/bash
#file: log_info.sh

week_days=(Sat Sun Mon Tue Wed Thu Fri)
max_num=0
max_day="No Day"

for day in ${week_days[*]}
do
	num=$(grep $day log_file.txt | wc -l)

	if [[ $num -gt $max_num ]]
	then
		let max_num=$num
		max_day=$day
	fi
done

echo "$max_day: $max_num"
