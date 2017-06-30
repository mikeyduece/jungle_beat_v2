require './lib/linked_list'

class JungleBeat
  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  def append(sounds)
    sounds.split.map do |sound|
      list.append(sound)
    end.join(" ")
  end

  def count
    list.count
  end

  def play
    beats = list.to_string
    `say -r 500 -v Boing #{beats}`
  end
end
