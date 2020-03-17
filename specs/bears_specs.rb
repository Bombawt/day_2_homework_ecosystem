require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')
require_relative('../river')
require_relative('../bears')

class BearsTest < MiniTest::Test

  def setup
    @bear1=Bears.new("Yogi")
  end

  def test_bears_name
    assert_equal("Yogi", @bear1.name)
  end







end
