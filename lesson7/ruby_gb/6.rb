d = Dir.pwd
count = Dir[File.join(d, '**', '*')].count { |file| File.extname(file) == ".rb" }
puts "There is #{count} .rb files in this directory and its subs"