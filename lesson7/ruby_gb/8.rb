source = IO.readlines('Class: String (Ruby 2.4.2).html')

first_line   = source.index { |line| line =~ /<!-- Method Quickref -->/ } + 1
last_line    = source.index { |line| line =~ /<!-- Included Modules -->/ } - 1

methods_lines = source[first_line..last_line].map { |line| line.gsub(/<\/?[^>]*>/, '') }

File.open('string.txt', 'w') do |f|
  f << methods_lines.join
end
