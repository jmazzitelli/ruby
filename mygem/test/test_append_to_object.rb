require 'test/unit'
require_relative '../lib/append/append_to_object'

class AppendToObjectTest < Test::Unit::TestCase

  def test_append_string
    assert_equal("aaabbb", Append::AppendToObject.new("aaa").do_it("bbb"), "Did not append right")
  end

  def test_append_number
    assert_equal(3, Append::AppendToObject.new(1).do_it(2), "Did not add right")
  end
end