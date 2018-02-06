require('minitest/autorun')
require_relative("../fish")

class TestFish < MiniTest::Test

  def setup
    @fish = Fish.new("Ali")
  end

  def test_get_fish_name
    assert_equal("Ali", @fish.name())
  end
end
