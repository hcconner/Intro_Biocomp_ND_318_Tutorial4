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
