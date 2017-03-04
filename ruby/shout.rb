module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!" + " :D"
  end
end

#DRIVER CODE
Shout.yell_angrily("I'm angry")
Shout.yell_happily("I'm happy")