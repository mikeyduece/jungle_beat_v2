require './lib/node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(sound)
    if @head.nil?
      @head = Node.new(sound)
    else
      current = @head
      until current.next_node.nil?
        current = current.next_node
      end
      current.next_node = Node.new(sound)
    end
    sound
  end

  def count
    count = 0
    pointer = head
    until pointer.nil?
      pointer = pointer.next_node
      count += 1
    end
    count
  end

  def to_string
    current = @head
    found_sounds = ""
    found_sounds << current.data + " "
    until current.next_node.nil?
      current = current.next_node
      found_sounds << current.data + " "
    end
    found_sounds.chop
  end

end
