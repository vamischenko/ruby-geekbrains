# task 2
#
# class freezer
class Freezer
  attr_accessor :status, :years

  def initialize(years)
    @yeras = years
  end

  def out_years
    years
  end

  def out_status
    status
  end

  def about(out_years)
    x = out_years
    if x.zero?
      write_stutas('New')
    elsif (x > 0) && (x <= 5)
      write_stutas('In work')
    elsif x > 5
      write_stutas('Old')
    elsif x < 0
      puts 'Error!'
    end
  end

  def need_repair
    random_boolean = [true, false].sample
    random_boolean
  end

  def in_repair(need_repair)
    if need_repair
      write_stutas('Need repair')
    else
      write_stutas('No')
    end
  end

  private

  def write_stutas(status)
    @status = status
  end
  # TODO: private method
  # class for master and user
end

# class for Master
class Master
  def repair(status)
    if status == 'Need repair'
      puts 'Need 1 hour for repair'
    else
      puts 'No'
    end
  end
end

# class for user
class User
  def need_repair_freezer
    random_boolean = [true, false].sample
    random_boolean
  end

  def open
    puts 'freezer is opened'
  end

  def close
    puts 'freezer is closed'
  end
end
