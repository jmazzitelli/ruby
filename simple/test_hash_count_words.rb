require_relative 'hash-count-words'
require 'test/unit'

class TestHashCountWords < Test::Unit::TestCase
  def test_empty_list
    assert_equal([], count_frequency([]))
  end
end