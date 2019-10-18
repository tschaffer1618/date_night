require './lib/node'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new({60 => "Taken 2"})
  end

  def test_it_exists
    assert_instance_of Node, @node
  end

  def test_attributes
    movie_score_hash = {60 => "Taken 2"}
    assert_equal movie_score_hash, @node.movie_score_hash
    assert_equal 60, @node.score
    assert_equal "Taken 2", @node.movie
    assert_nil @node.left_node
    assert_nil @node.right_node
  end
end
