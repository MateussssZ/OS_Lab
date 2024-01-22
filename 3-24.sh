# #!bin/bash
items=($(cat items.txt)) #Берём все элементы из txt файлов и создаём из них массив
count_items=$(grep -c $ items.txt)
count_properties=$(grep -c $ properties.txt) #Считываем количество строк(количество предметов, по сути)
properties=($(cat properties.txt))
echo "Инвентарь игрока $USER" #Красивый вывод
for ((i=1;i<=5;i++)) #Цикл, чтобы вывести 5 предметов
do
rand=$((RANDOM % $count_items)) #Берём рандомный предмет и сохраняем его
item=${items[${rand}]}
rand=$((RANDOM % $count_properties)) #Берём рандомное свойство и сохраняем его
property=${properties[$rand]}
echo $i. $item $property #Выводим результат
done
