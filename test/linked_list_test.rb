require './test/test_helper'
require './lib/linked_list'

class LinkedListTest < Minitest::Test
  attr_reader :list

  def setup
    @list = LinkedList.new
  end

  def test_it_exists
    assert_instance_of LinkedList, list
  end

  def test_head_is_nil_by_default
    assert_nil list.head
  end

  def test_it_can_append
    list.append("doop")
    assert_equal "doop", list.head.data
    list.append("wha")
    assert_equal "wha", list.head.next_node.data
    list.append("wha")
    assert_equal "wha", list.head.next_node.next_node.data
    assert_nil list.head.next_node.next_node.next_node
  end


end
