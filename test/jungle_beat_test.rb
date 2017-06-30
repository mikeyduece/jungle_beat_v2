require './test/test_helper'
require './lib/jungle_beat'

class JungleBeatTest < Minitest::Test
  attr_reader :jb
  def setup
    @jb = JungleBeat.new
  end

  def test_it_exists
    assert_instance_of JungleBeat, jb
  end

  def test_it_knows_about_linked_list
    assert_instance_of LinkedList, jb.list
  end

  def test_it_can_see_list_head_is_nil_by_default
    assert_nil jb.list.head
  end

  def test_it_can_append_the_list
    jb.append("deep doo ditt")
    assert_equal "deep doo ditt", jb.append("deep doo ditt")
  end

  def test_it_can_tell_what_the_head_data_is
    skip
    jb.append("deep doo ditt")
    assert_equal "deep", jb.list.head.data
  end
end
# > jb.list.head.data
# => "deep"
# > jb.list.head.next_node.data
# => "doo"
# > jb.append("woo hoo shu")
# => "woo hoo shu"
# > jb.count
# 6
