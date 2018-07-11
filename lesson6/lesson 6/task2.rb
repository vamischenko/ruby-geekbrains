##
# Task2
# Обычному пользователю холодильника можно только узнать темпиратуру и
# поставить другой темпиратурный режим(их всего 2)
class Fridge
  def change_temp
    if current_temp == @first_temp
      currentt_temp(@second_temp)
    else
      currentt_temp(@first_temp)
    end
  end

  def show_curr_temp
    @current_temp
  end

  private

  attr_accessor :current_temp, :first_temp, :second_temp
  def initialize
    @current_temp = -10
    @first_temp = -10
    @second_temp = -15
  end

  def currentt_temp(newtemp)
    @current_temp = newtemp
  end
end
fridge = Fridge.new
puts 'Демонстрация смены темпиратуры'
puts fridge.show_curr_temp
fridge.change_temp
puts fridge.show_curr_temp
