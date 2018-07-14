require 'rack'
run proc { |_env| [200, { 'Content-Type' => 'X-Ruby-Version' }, ["Current Ruby -v: #{RUBY_VERSION}"]] }
