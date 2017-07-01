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
    list.append("doop")
    assert_equal 1, list.count
  end

  def test_it_can_count_more
    list.append("doop")
    list.append("woo")
    assert_equal 2, list.count
    list.append("shi")
    list.append("shu")
    list.append("neva")
    assert_equal 5, list.count
  end

  def test_it_can_grab_string_of_data
    list.append("doop")
    assert_equal "doop", list.to_string
  end

  def test_it_can_grab_more_than_one_sound
    list.append("doop")
    list.append("woo")
    list.append("shi")
    assert_equal 3, list.count
    assert_equal "doop woo shi", list.to_string
  end

  def test_it_can_prepend_sounds
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
    assert_equal 3, list.count
  end

  def test_it_can_prepend_more
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
    assert_equal 3, list.count
    list.prepend("wha")
    assert_equal "wha dop plop suu", list.to_string
    assert_equal 4, list.count
  end

  def test_it_can_insert
    list.append("dop")
    list.append("plop")
    list.append("suu")
    assert_equal "dop plop suu", list.to_string
    list.insert(1, "woo")
    assert_equal "dop woo plop suu", list.to_string
  end

  def test_it_can_insert_again
    list.append("dop")
    list.append("plop")
    list.append("suu")
    assert_equal "dop plop suu", list.to_string
    list.insert(1, "woo")
    assert_equal "dop woo plop suu", list.to_string
    list.insert(2, "huh")
    assert_equal "dop woo huh plop suu", list.to_string
  end
end
