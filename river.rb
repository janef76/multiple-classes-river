class River

  attr_reader(:name, :fishes)

  def initialize(name, fishes = [])
    @name = name
    @fishes = []
  end

  def number_of_fish()
    return @fishes.count
  end

  def add_fish_to_river(fish)
    @fishes.push(fish)
  end

  def remove_fish(fish)
    @fishes.delete(fish)
  end

  def test_count_fish(fish)
    @fishes.count(fish)
  end

end
