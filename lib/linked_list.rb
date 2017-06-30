require './lib/node'

class LinkedList
  attr_reader :head

  def intialize
    @head = nil
  end

  def append(sound)
    if head.nil?
      @head = Node.new(sound)
    else
      current_node = @head
      until current_node.next_node == nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(sound)
    end
    sound
  end

  def count
    count   = 0
    pointer = @head
    while pointer != nil
      pointer = pointer.next_node
      count  += 1
    end
    count
  end

  def to_string
    sounds       = ""
    current_node = @head
    sounds << current_node.data + " "
    until current_node.next_node == nil
      current_node = current_node.next_node
      sounds << current_node.data + " "
    end
    sounds.chop
  end

  def prepend(sound)
    temp  = @head
    @head = Node.new(sound)
    @head.next_node = temp
  end

  def find(index,amt)
    current_node = @head
    count   = 0
    until count == index
      current_node = current_node.next_node
      count  += 1
    end
    sounds = ""
    amt.times do
      sounds << current_node.data + " "
      current_node = current_node.next_node
    end
    sounds.chop
  end

  def includes?(sound)
    current_node = @head
    until current_node == nil
      if current_node.data == sound
        return true
      else
        current_node = current_node.next_node
      end
    end
    return false
  end




end




# > list.to_string
# => "doop"
