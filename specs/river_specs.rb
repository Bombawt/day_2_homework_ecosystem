require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')
require_relative('../river')
require_relative('../bears')

class RiverTest < MiniTest::Test

def setup
  @fish1=Fish.new("Trout")
  @fish2=Fish.new("Salmon")
  @fish3=Fish.new("Eel")
  @fish4=Fish.new("Baby Shark")

  @fish = [@fish1, @fish2, @fish3]

  @river=River.new("Yellowstone", @fish)
end

def test_river_name()
  assert_equal("Yellowstone", @river.name)
end

def test_river_contents()
  assert_equal(3, @river.fish_count())
end

def test_add_fish()
  @river.add_fish(@fish4)
  assert_equal(4, @river.fish_count())
end

def test_remove_fish()
  @river.remove_fish(@fish1)
  assert_equal(2, @river.fish_count())
end









end
