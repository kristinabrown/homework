gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'chisel'

class ChiselTest < Minitest::Test

  def setup
    @parser = Chisel.new
  end

  def test_it_can_parse_a_header
    assert_equal "<h1> header</h1>", @parser.parse("# header")
  end

  def test_it_can_parse_a_lesser_header
    assert_equal "<h2> header</h2>", @parser.parse_header("## header")
  end

  def test_it_can_parse_an_even_lesser_header
    assert_equal "<h3> header</h3>", @parser.parse_header("### header")
  end

  def test_it_can_parse_a_paragraph
    assert_equal "this is a paragraph", @parser.parse("this is a paragraph")
  end

  def test_it_can_parse_the_difference_between_paragraph_and_header
    skip
    parser = Chisel.new
    assert_equal "<h2> a little header</h>" " and a paragraph", parser.parse("## a little header/n and a paragraph")
  end

  # *text* is <em>text</em>
  # **text** is <strong>text</text>

end
