def colors(colName)
  if (colName == 'red') || (colName == "\xD0\xBA\xD1\x80\xD0\xB0\xD1\x81\xD0\xBD\xD1\x8B\xD0\xB9")
    puts 1
  elsif (colName == 'orange') || (colName == "\xD0\xBE\xD1\x80\xD0\xB0\xD0\xBD\xD0\xB6\xD0\xB5\xD0\xB2\xD1\x8B\xD0\xB9")
    puts 2
  elsif (colName == 'yellow') || (colName == "\xD0\xB6\xD0\xB5\xD0\xBB\xD1\x82\xD1\x8B\xD0\xB9")
    puts 3
  elsif (colName == 'green') || (colName == "\xD0\xB7\xD0\xB5\xD0\xBB\xD0\xB5\xD0\xBD\xD1\x8B\xD0\xB9")
    puts 4
  elsif (colName == 'blue') || (colName == "\xD1\x81\xD0\xB8\xD0\xBD\xD0\xB8\xD0\xB9")
    puts 5
  elsif (colName == 'white-blue') || (colName == "\xD0\xB3\xD0\xBE\xD0\xBB\xD1\x83\xD0\xB1\xD0\xBE\xD0\xB9")
    puts 6
  elsif (colName == 'purple') || (colName == "\xD1\x84\xD0\xB8\xD0\xBE\xD0\xBB\xD0\xB5\xD1\x82\xD0\xBE\xD0\xB2\xD1\x8B\xD0\xB9")
    puts 7
  else
    puts nil
  end
end

# 4 задание
colors(ARGV[0].to_s.encode('utf-8'))
