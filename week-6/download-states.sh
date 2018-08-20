#!/bin/bash
# Download 2016 election polls from Huffington Post Pollster API
declare -a states=("AL" "AK" "AZ" "AR" "CA" "CO" "CT" "DE" "FL" "GA" "HI" "ID" "IL" "IN" "IA" "KS" "KY" "LA" "ME" "MD" "MA" "MI" "MN" "MS" "MO" "MT" "NE" "NV" "NH" "NJ" "NM" "NY" "NC" "ND" "OH" "OK" "OR" "PA" "RI" "SC" "SD" "TN" "TX" "UT" "VT" "VA" "WA" "WV" "WI" "WY")

for state in "${states[@]}"
do
	echo Downloading "$state"...
	curl http://elections.huffingtonpost.com/pollster/api/v2/questions/16-"$state"-Pres-GE%20TrumpvClinton/poll-responses-clean.tsv > data/"$state".tsv
done
