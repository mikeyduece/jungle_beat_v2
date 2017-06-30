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

  def test_it_can_count
    list.append("doop")
    assert_equal "doop", list.head.data
    assert_equal 1, list.count
    list.append("wha")
    list.append("huh")
    list.append("pop")
    assert_equal 4, list.count
  end

  def test_it_can_generate_strings_of_sounds
    list.append("doop")
    list.append("deep")
    assert_equal "doop deep", list.to_string
  end


end
