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

end



# > list.count
# => 1
# > list.to_string
# => "doop"
