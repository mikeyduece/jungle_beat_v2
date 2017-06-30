require './test/test_helper'
require './lib/linked_list'

class LinkedListTest < Minitest::Test
  attr_reader :list

  def setup
    @list = LinkedList.new
  end

  def test_it_exists
    assert_equal LinkedList, list.class
  end

  def test_head_is_nil_by_default
    assert_nil list.head
  end

  def test_it_can_append
    list.append("doop")
    assert_equal "doop", list.head.data
  end

  def test_it_can_append_more
    list.append("doop")
    list.append("woo")
    assert_equal "woo", list.head.next_node.data
  end

  def test_next_is_nil_still
    list.append("doop")
    assert_equal "doop", list.head.data
    assert_nil list.head.next_node
  end

  def test_it_can_count

  end
end

# > list.count
# => 1
# > list.to_string
# => "doop"
