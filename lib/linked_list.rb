require './lib/node'

class LinkedList
  attr_reader :head

  def intialize
    @head = nil
  end

  def append(sound)
    if @head.nil?
      @head = Node.new(sound)
    else
      current = @head
      until current.next_node == nil
        current = current.next_node
      end
      current.next_node = Node.new(sound)
    end
    sound
  end

  def count
    count   = 0
    pointer = @head
    until pointer == nil
      pointer = pointer.next_node
      count += 1
    end
    count
  end

  def to_string
    sounds  = ""
    current = @head
    sounds << current.data + " "
    until current.next_node == nil
      current = current.next_node
      sounds << current.data + " "
    end
    sounds.chop
  end

  def prepend(sound)
    temp            = @head
    @head           = Node.new(sound)
    @head.next_node = temp
  end

  def find(position,amount)
    found_sounds = ""
    count        = 0
    current      = @head
    position.times do
      current = current.next_node
    end
    amount.times do
      found_sounds << current.data + " "
      current = current.next_node
    end
    found_sounds.chop
  end

  def includes?(sound)
    current = @head
    until current.nil?
      if current.data == sound
        return true
      else
        current = current.next_node
      end
    end
    return false
  end

  def insert(position,sound)
    current = @head
    count   = 0
    position.times do
      current = current.next_node
    end
    new_node           = Node.new(sound)
    new_node.next_node = current.next_node
    current.next_node  = new_node
  end

  def pop
    current = @head
    until current.next_node.next_node == nil
      current = current.next_node
    end
    current.next_node = nil
  end

end
