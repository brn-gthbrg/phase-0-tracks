# module Shout
  # def self.yell_angrily(words)
    # words + "!!!" + " :("
  # end

  # def self.yell_happily(words)
    # words + "!" + " :D"
  # end
# end


#DRIVER CODE
# Shout.yell_angrily("I'm angry")
# Shout.yell_happily("I'm happy")




#RELEASE 3: convert to mixin
module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!" + ":D"
  end
end

class Life
  include Shout
end

spill_coffee = Life.new
spill_coffee.yell_angrily("Shit that was hot")
# spill_coffee.yell_angrily("Shit that was hot")

win_lottery = Life.new
win_lottery.yell_happily("I'm rich")
# win_lottery.yell_happily("I'm rich")