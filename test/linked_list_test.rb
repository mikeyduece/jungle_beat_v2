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
    require "pry"; binding.pry
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

  def test_it_can_find
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "shi", list.find(2, 1)
  end

  def test_it_can_find_others
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "woo shi shu", list.find(1, 3)
  end

  def test_it_can_include?
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert list.includes?("deep")
    refute list.includes?("dep")
  end

  def test_it_can_pop
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "deep woo shi shu blop", list.to_string
    assert_equal 5, list.count
    assert_equal "blop", list.pop
    assert_equal "deep woo shi shu", list.to_string
    assert_equal 4, list.count
  end

  def test_it_can_pop_more
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal 5, list.count
    assert_equal "blop", list.pop
    assert_equal "deep woo shi shu", list.to_string
    assert_equal 4, list.count
    assert_equal "shu", list.pop
    assert_equal "deep woo shi", list.to_string
    assert_equal 3, list.count
  end
end
# > list.pop
# => "blop"
# > list.pop
# => "shu"
# > list.to_string
# => "deep woo shi"
