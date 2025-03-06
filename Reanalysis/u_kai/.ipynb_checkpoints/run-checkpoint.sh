#!bin/sh
source ~/.bashrc
alias opengrads="/home/kaichiht/opengrads/opengrads"
for year in {2000..2021}
do
echo $year > year.txt
opengrads -pbxc integrate.gs
done
