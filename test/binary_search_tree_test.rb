require './lib/node'
require './lib/binary_search_tree'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

class BinarySearchTreeTest < Minitest::Test
  def setup
    @tree = BinarySearchTree.new
  end

  def test_it_exists
    assert_instance_of BinarySearchTree, @tree
  end

  def test_attributes
    assert_nil @tree.head_node
  end

  def test_insert
    insertion_1 = @tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_equal 0, insertion_1
    assert_equal 61, @tree.head_node.score

    insertion_2 = @tree.insert(16, "Johnny English")
    assert_equal 1, insertion_2
    assert_equal 16, @tree.head_node.left_node.score

    insertion_3 = @tree.insert(92, "Sharknado 3")
    assert_equal 1, insertion_3
    assert_equal 92, @tree.head_node.right_node.score

    insertion_4 = @tree.insert(50, "Hannibal Buress: Animal Furnace")
    assert_equal 2, insertion_4
    assert_equal 50, @tree.head_node.left_node.right_node.score
  end

  def test_depth_of
    insertion_1 = @tree.insert(61, "Bill & Ted's Excellent Adventure")
    insertion_2 = @tree.insert(16, "Johnny English")
    insertion_3 = @tree.insert(92, "Sharknado 3")
    insertion_4 = @tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert_equal 1, @tree.depth_of(92)
    assert_equal 2, @tree.depth_of(50)
  end

  def test_include
    insertion_1 = @tree.insert(61, "Bill & Ted's Excellent Adventure")
    insertion_2 = @tree.insert(16, "Johnny English")
    insertion_3 = @tree.insert(92, "Sharknado 3")
    insertion_4 = @tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert_equal true, @tree.include?(92)
    assert_equal false, @tree.include?(72)
  end
end
