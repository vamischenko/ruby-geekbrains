# rake search['.']
# => 34

task :search, [:paths] do |_t, arg|
  require 'pathname'
  def tree(path, size = 0)
    entry = Dir.new(path).reject { |x| %w[. ..].include? x }.map { |x| path.join x }
    entry.reduce(size) do |size, item|
      if File.directory? item
        tree(item, size)
      elsif item.extname == '.rb'
        size + 1
      else
        size
      end
    end
  end
  pat = Pathname.new(arg[:paths])
  puts tree(pat)
end
