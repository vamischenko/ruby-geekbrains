f = File.read('text.txt').gsub(/[^а-яА-Яa-zA-Z]/, ' ').split(' ')
arr = f.select { |v| v.length > 5 }.sort
puts "Больше пяти символов в #{arr.length} словах, уникальныx - #{arr.uniq.length}: \n "
p arr.uniq
