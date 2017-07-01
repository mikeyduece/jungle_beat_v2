require './test/test_helper'
require './lib/jungle_beat'

class JungleBeatTest < Minitest::Test
  attr_reader :jb
  def setup
    @jb = JungleBeat.new
  end

  def test_it_exists
    assert_equal JungleBeat, jb.class
  end

  def test_it_can_see_the_list
    assert_equal LinkedList, jb.list.class
  end

  def test_list_is_nil_by_default
    assert_nil jb.list.head
  end

  def test_it_can_append_more_than_one_at_a_time
    jb.append("deep doo ditt")
    assert_equal "deep doo ditt", jb.list.to_string
    assert_equal 3, jb.list.count
  end

  def test_it_can_read_head_data
    jb.append("deep doo ditt")
    assert_equal "deep doo ditt", jb.list.to_string
    assert_equal 3, jb.list.count
    assert_equal "deep", jb.list.head.data
  end

  def test_it_can_see_next_node_data
    jb.append("deep doo ditt")
    assert_equal "deep doo ditt", jb.list.to_string
    assert_equal 3, jb.list.count
    assert_equal "deep", jb.list.head.data
    assert_equal "doo", jb.list.head.next_node.data
  end

  def test_it_can_append_more
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    assert_equal 6, jb.count
    assert_equal "deep doo ditt woo hoo shu", jb.list.to_string
  end

  def test_it_can_play
    jb.append("never gonna give you up, never gonna let you down")
    jb.append("never gonna run around and desert you")
    jb.append"Never gonna make you cry, never gonna say goodbye"
    jb.append("Never gonna tell a lie and hurt you")
    jb.play
  end
end
