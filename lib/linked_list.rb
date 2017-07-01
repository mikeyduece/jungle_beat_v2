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

  def prepend(sound)
    temp  = @head
    new_node = Node.new(sound)
    @head = new_node
    new_node.next_node = temp
  end

  def insert(position,sound)
    current   = @head
    (position-1).times do
      current = current.next_node
    end
    new_node           = Node.new(sound)
    new_node.next_node = current.next_node
    current.next_node  = new_node
  end

  def find(position,amount)
    current      = @head
    found_sounds = ""
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
      return false
    end
  end

  def pop
    current = @head
    until current.next_node.next_node.nil?
      current = current.next_node
    end
    popped = current.next_node.data
    current.next_node = nil
    popped
  end

end
