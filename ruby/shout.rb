module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :)"
  end
end

#driver code
puts Shout.yell_angrily("I am mad")
puts Shout.yelling_happily("I'm so happy")
