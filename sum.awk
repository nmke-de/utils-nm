#! /usr/bin/awk -f

BEGIN {_sum = 0}

{
	_sum += $1
}

END {print _sum}
