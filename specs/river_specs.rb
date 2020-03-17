require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')
require_relative('../river')

class RiverTest < MiniTest::Test

def setup
  @river=River.new("Yellowstone")
end

def test_river_name
  assert_equal("Yellowstone", @river.name)
end







end
