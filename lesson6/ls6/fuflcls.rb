class Dopobj
  def ishuman?
    false
  end

  def startconnect(_idata)
    true
  end
end

class Droid
  attr_accessor :droidname
  def initialize(_name = 'r2d2')
    @droidname = droidname
    @initdata = '01010011000111100010101001111100110001010010000011111110010100100101001000111'
  end

  def setupdroid(type, *_language)
    @type = type
  end

  def communicate(withobject)
    initconnect(withobject)
  end

  private

  def initconnect(withobject)
    withobject.ishuman? ? withobject.startconnect(translatehuman(@initdata, ln)) : withobject.startconnect(@initdata)
  end

  def translatehuman(data, _ln = 'en')
    useln(data)
  end
end
