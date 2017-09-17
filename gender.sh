# Takes wages.csv and...
#1) removes first row,
#2) only keeps gender and years experience columns, 
#3) sorts unique gender/years experience combinations,
#4) and writes it to a filename of your choice

#Usage: bash gender.sh <filenameforoutput>

cat wages.csv | sed '1d'| cut -d, -f-1,2 | sort -ut"," -k1,1 -k2n,2  > "$1"



#Returns gender, yearsExperience, and wage for
#1 highest earner
#2 lowest earner
#3 number of females in the top 10 wage earners
#usage: bash gender.sh 
echo 'highest earner'
cat wages.csv | grep -v gender | sed 'y/,/ /' | sort -k 4 -n -r | head -n 1
echo 'lowest earner'
cat wages.csv | grep -v gender | sed 'y/,/ /' | sort -k 4 -n -r | tail -n 1
echo 'number of females in the top 10 wage earners'
cat wages.csv | grep -v gender | sed 'y/,/ /' | sort -k 4 -n -r | head -n 10 | grep female | wc -l
