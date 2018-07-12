require 'open-uri'
require 'nokogiri'
require 'json'
url = 'http://ruby-doc.org/core-2.4.2/String.html'
html = open(url)
doc = Nokogiri::HTML(html)
string_methods = doc.css('[id="method-list-section"]').map do |x|
  listofmethods = x.css('.link-list li a').map(&:children)
  { string_methods: listofmethods }
end
f = File.new('string_methods.txt', 'w')
f.puts JSON.pretty_generate(string_methods)
f.close
puts 'Текстовый файл создан в директории с файлом программы.Методы записаны.'
