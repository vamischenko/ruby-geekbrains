#class for user
class User
  def init(first, second, last, prof)
    @firstName = first
    @secondName = second
    @lastName = last
    @profession = prof
  end

  def fio
    [@firstName, @secondName, @lastName]
  end

  def get_prof
    @profession
  end
end
