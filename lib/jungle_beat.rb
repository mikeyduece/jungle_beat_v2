require './lib/linked_list'

class JungleBeat
  attr_reader :list
  attr_accessor :rate, :voice

  def initialize
    @list = LinkedList.new
    @rate = rate
    @voice = voice
  end

  def append(sounds)
    sounds.split.map {|sound| list.append(sound)}
  end

  def count
    list.count
  end

  def play
    @rate = 250
    @voice = "Ralph"
    beats = list.to_string
    `say -r #{rate} -v #{voice} #{beats}`
  end
end
