require('minitest/autorun')
require_relative('../river')
#require_relative('../fish')
#require_relative('..bears')

class TestRiver < MiniTest::Test

  def setup()
    @fish1 = River.new("Nemo")
    @river = River.new("Amazon")
  end

  def test_river_name()
    name = @river.name()
    assert_equal("Amazon", name)
  end

  def test_number_fish()
    assert_equal(0, @river.number_of_fish)
  end

  def test_add_fish_to_river()
    @river.add_fish_to_river(@fish1)
    number_of_fish = @river.number_of_fish()
    assert_equal(1, number_of_fish)
  end

  def test_remove_fish_from_river()
    @river.remove_fish(@fish1)
    number_of_fish = @river.number_of_fish()
    assert_equal(0, number_of_fish)
  end

  def test_count_fish
    @river.add_fish_to_river(@fish1)
    assert_equal(1, @river.fishes.count)
  end

end
