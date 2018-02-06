class Bears
  attr_reader(:name, :empty_stomach)

  def initialize(name, empty_stomach = [])
    @name = name
    @empty_stomach = empty_stomach
  end

  def number_of_fish()
    return @empty_stomach.length()
  end

  def add_to_bear(fish)
    @empty_stomach.push(fish)
  end

  def roar()
    return "Roar roar!!!"
  end

  def food_count(fish)
    @empty_stomach.push(fish).count
  end
end
