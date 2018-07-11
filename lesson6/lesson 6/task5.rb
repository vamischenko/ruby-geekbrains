##
# Task 5
module Fivable
  MAX_INSTANCES = 5
  COUNT_HOOK = :max_instances
  ##
  # Methods of Fivable
  module FivableClassMethods
    @@counter = -1
    def instance
      @@counter += 1
      size = @instances.size
      max = 5
      @instances << new if size < max
      @instances[@@counter]
    end
  end

  def self.included(klass)
    klass.class_eval { @instances = [] }
    klass.private_class_method :new
    klass.extend(FivableClassMethods)
  end
end
##
# Test
class Test
  include Fivable
end
tests = []
10.times do
  tests << Test.instance
end
puts 'При попытке создания 10 объектов,создается только 5'
tests.each { |x| p x }
