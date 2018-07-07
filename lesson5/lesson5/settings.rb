class Settings
  class InnerSettings
    def method_missing(m, *args)
      method_name = m.to_s.chomp('=')

      class_scope = class << Settings; Settings; end

      class_scope.class_eval do
        define_method("#{method_name}=") do
          instance_variable_get("@#{method_name}")
        end

        define_method(method_name) do
          instance_variable_set("@#{method_name}", args)
        end
      end
    end
  end

  def initialize(*)
    return unless block_given?
    yield InnerSettings.new
  end
end
