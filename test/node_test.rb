require './test/test_helper'
require './lib/node'

class NodeTest < Minitest::Test

  def test_it_exists
    node = Node.new
    assert_instance_of Node, node
  end

  def test_can_hold_data
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_next_node_is_nil
    node = Node.new
    assert_nil node.next_node
  end

end
