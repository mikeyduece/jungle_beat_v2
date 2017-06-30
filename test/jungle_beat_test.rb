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
    jb.append("deep doo ditt")
    assert_equal "deep", jb.list.head.data
    assert_equal "doo", jb.list.head.next_node.data
    assert_equal "ditt", jb.list.head.next_node.next_node.data
    assert_equal 3, jb.count
  end

  def test_it_can_add_more
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    assert_equal 6, jb.count
  end

  def test_it_can_play_beats
    jb.append("deep doo ditt woo hoo shu")
    assert_equal 6, jb.count
    jb.play
  end

end
# > jb.play
# => # plays the sounds deep doo ditt woo hoo shu
