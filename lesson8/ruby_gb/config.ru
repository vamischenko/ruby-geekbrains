require 'rack'

run proc {|env| [200,{'Content-Type' => 'X-Ruby-Version'}, ["Current Ruby -v: #{RUBY_VERSION}"]]}

#map '/home' do
#	run proc {|env| [200,{'Content-Type' => 'X-Ruby-Version'}, ["Current Ruby -v: #{RUBY_VERSION}"]]}
#end