array = Array.new(10) { |_index| rand(100) }

puts format("\xD0\x9C\xD0\xB0\xD0\xBA\xD1\x81\xD0\xB8\xD0\xBC\xD0\xB0\xD0\xBB\xD1\x8C\xD0\xBD\xD0\xBE\xD0\xB5 \xD0\xB7\xD0\xBD\xD0\xB0\xD1\x87\xD0\xB5\xD0\xBD\xD0\xB8\xD0\xB5 = %d", array.max)
puts format("\xD0\x9C\xD0\xB8\xD0\xBD\xD0\xB8\xD0\xBC\xD0\xB0\xD0\xBB\xD1\x8C\xD0\xBD\xD0\xBE\xD0\xB5 \xD0\xB7\xD0\xBD\xD0\xB0\xD1\x87\xD0\xB5\xD0\xBD\xD0\xB8\xD0\xB5 = %d", array.min)
