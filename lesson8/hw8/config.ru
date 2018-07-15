require 'rack'

# Если лень включать прогу, то результат программы есть в папкке скриншотом
class App
  def self.call(_env)
    [200, { 'Content-Type' => 'text/html', 'X-Ruby-Version' => RUBY_VERSION.to_s }, ["HI!\nRuby-version - #{RUBY_VERSION}"]]
  end
end

run App
