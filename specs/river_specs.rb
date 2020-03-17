require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')
require_relative('../river')

class RiverTest < MiniTest::Test

def setup
  @river=River.new("Yellowstone")

  @fish1=Fish.new("Trout")
  @fish2=Fish.new("Salmon")
  @fish3=Fish.new("Eel")

  @fish = [@fish1,@fish2,@fish3]
end

def test_river_name()
  assert_equal("Yellowstone", @river.name)
end

def test_river_contents()
  assert_equal(3, @fish.length)
end






end
