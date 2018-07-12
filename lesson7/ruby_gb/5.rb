f = File.read('text.txt').split(' ').select { |w| w.start_with? 'и' }
p f.uniq.sort_by(&:length)
