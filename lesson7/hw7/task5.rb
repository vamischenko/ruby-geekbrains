str = 'Возьмите текст этого задания и извлеките из него все слова, количество символов в которых больше 5. Подсчитайте количество слов и выведите их алфавитном порядке.'
str = str.split.map { |x| x.match /[А-Яа-я]{6,}/ }
str = str.reject(&:nil?)
str = str.map { |x| x.to_s.downcase }
puts 'Слова, количество символов в которых больше 5:'
puts str.sort
puts "Их колличество равно #{str.size}"
