class Bear

  attr_reader :name, :type, :stomach
  attr_writer :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def stomach_contents
    return @stomach.size
  end

  def add_fish(fish)
    @stomach.push(fish)
  end

  

end
