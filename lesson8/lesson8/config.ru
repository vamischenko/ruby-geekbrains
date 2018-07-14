require 'rack'

class Webapp
    def self.call(env)
        [200, { 'Content-Type' => 'X-Ruby-Version' }, ['Ruby version: '+RUBY_VERSION]]
    end
end

run Webapp