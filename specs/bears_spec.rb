require('minitest/autorun')
require_relative('../bears')

class BearsTest < MiniTest::Test

  def setup
    @fish1 = Bears.new("Goldy")
    @fish2 = Bears.new("Blacky")
    @fish3 = Bears.new("Silver")
    @bear = Bears.new("Yogi", [@fish3])
  end

  def test_get_bear_name
    name = @bear.name()
    assert_equal("Yogi", name)
  end

  def test_number_of_fish
    number_of_fish = @bear.number_of_fish()
    assert_equal(1, number_of_fish)
  end

  def test_bear_taking_fish
    @bear.add_to_bear(@fish1)
    number_of_fish = @bear.number_of_fish()
    assert_equal(2, number_of_fish)
  end

  def test_bear_roar
    assert_equal("Roar roar!!!", @bear.roar)
  end

  def test_food_count
    @bear.add_to_bear(@fish2)
    assert_equal(2, @bear.empty_stomach.count)
  end
end
