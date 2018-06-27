module Internet
  class User
    def init(first, second, last, prof)
      @firstName = first
      @secondName = second
      @lastName = last
      @profession = prof
    end

    def fio
      return @firstName, @secondName, @lastName
    end

    def get_prof
      return @profession
    end
  end
  class Computer
  end
  class Network
  end
  class Host
  end
end