# task 1

h = { red: 'красный', orange: 'оранжевый', yellow: 'желтый', green: 'зеленый', blue: 'голубой', indigo: 'синий', violet: 'фиолетовый' }
h1 = h.values.zip(h.keys.map(&:to_s)).to_h
puts h1
puts

# task 2

arrayhash = %w[first second third]
puts arrayhash.zip(arrayhash.map { |item, _count| item[0..0].capitalize.to_s + item[-2..-1].to_s + "(#{arrayhash.index(item) + 1})" }).to_h
puts

# task 2

firstarr = %w[red orange yellow green gray indigo violet]
secondarr = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]
puts firstarr.zip(secondarr).to_h
puts

# task 3

puts (1...10).to_a.map { |e| [e] }.map! { |e| Array.new(3) { |i| (i + 1) + (((e.join.to_s.to_i - 1) / 3) * 3) } }.uniq.inspect
puts

# task 4

# taskdata = IO.read('task7.txt').encode!('UTF-8', 'UTF-8', :invalid => :replace)

strdata = "1. Пусть имеется хэш { red: 'красный', orange: 'оранжевый', yellow: 'желтый', green: 'зеленый', blue: 'голубой', indigo: 'синий', violet: 'фиолетовый' }. Првератите его в хэш { 'красный' => 'red', 'оранжевый' => 'orange', 'желтый' => 'yellow', 'зеленый' => 'green', 'голубой' => 'blue', 'синий' => 'indigo', 'фиолетовый' => 'violet' }.
2. Преобразуйте массив вида %w[first second third] в хэш вида {first: 'Fst (1)', second: 'Snd (2)', third: 'Trd (3)'}. Выражение преобразования должно быть однострочным.
2. Имеется два массива %w[red orange yellow green gray indigo violet] и %w[красный оранжевый желтый зеленый голубой синий фиолетовый]. Создайте из них хэш {red: 'красный', orange: 'оранжевый', yellow: 'желтый', green: 'зеленый', blue: 'голубой', indigo: 'синий', violet: 'фиолетовый'}
3. Пусть есть диапазон от 1 до 9 — (1...10). Преобразуйте его в массив из трех подмассивов [[1, 2, 3], [4, 5, 6], [7, 8, 9]].
4. Возьмите текст этого задания и извлеките из него все слова, количество символов в которых больше 5. Подсчитайте количество слов и выведите их алфавитном порядке.
5. Возьмите текст этого задания и извлеките из него все слова, которые начинаются с символа 'и'. Сформируйте из них список уникальных слов и выведите их в порядке увеличения количества символов в слове.
6. *Разработайте программу, которая подсчитывает количество файлов с расширением .rb в текущей папке, включая все вложенные подпапки.
7. *Строку 'Hello world!' преобразуйте в [H, e, l, l, o, " ", w, o, r, l, d, !]. Выражение преобразования должно быть однострочным.
8. *Со страницы документации, посвященной классу String языка Ruby (например, http://ruby-doc.org/core-2.4.2/String.html) извлеките список методов. Сохраните полученный список в файл string.txt."

strdata = strdata.split.map { |x| x.match /[А-Яа-я]{6,}/ }.reject(&:nil?).map { |x| x.to_s.downcase }.sort
puts strdata.size, strdata
puts

# task 5

str = "1. Пусть имеется хэш { red: 'красный', orange: 'оранжевый', yellow: 'желтый', green: 'зеленый', blue: 'голубой', indigo: 'синий', violet: 'фиолетовый' }. Првератите его в хэш { 'красный' => 'red', 'оранжевый' => 'orange', 'желтый' => 'yellow', 'зеленый' => 'green', 'голубой' => 'blue', 'синий' => 'indigo', 'фиолетовый' => 'violet' }.
2. Преобразуйте массив вида %w[first second third] в хэш вида {first: 'Fst (1)', second: 'Snd (2)', third: 'Trd (3)'}. Выражение преобразования должно быть однострочным.
2. Имеется два массива %w[red orange yellow green gray indigo violet] и %w[красный оранжевый желтый зеленый голубой синий фиолетовый]. Создайте из них хэш {red: 'красный', orange: 'оранжевый', yellow: 'желтый', green: 'зеленый', blue: 'голубой', indigo: 'синий', violet: 'фиолетовый'}
3. Пусть есть диапазон от 1 до 9 — (1...10). Преобразуйте его в массив из трех подмассивов [[1, 2, 3], [4, 5, 6], [7, 8, 9]].
4. Возьмите текст этого задания и извлеките из него все слова, количество символов в которых больше 5. Подсчитайте количество слов и выведите их алфавитном порядке.
5. Возьмите текст этого задания и извлеките из него все слова, которые начинаются с символа 'и'. Сформируйте из них список уникальных слов и выведите их в порядке увеличения количества символов в слове.
6. *Разработайте программу, которая подсчитывает количество файлов с расширением .rb в текущей папке, включая все вложенные подпапки.
7. *Строку 'Hello world!' преобразуйте в [H, e, l, l, o, " ", w, o, r, l, d, !]. Выражение преобразования должно быть однострочным.
8. *Со страницы документации, посвященной классу String языка Ruby (например, http://ruby-doc.org/core-2.4.2/String.html) извлеките список методов. Сохраните полученный список в файл string.txt."

str = str.split.map { |y| y.match /^и+[А-Яа-я]*/ }
str = str.reject(&:nil?)
str = str.map(&:to_s)
str = str.uniq!.sort_by(&:size)
puts str
puts

# task 7

puts 'Hello world!'.split('').inspect
