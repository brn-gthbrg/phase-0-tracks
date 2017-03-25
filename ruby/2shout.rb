# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     puts words + "!" + " :D"
#   end
# end


# # DRIVER CODE
# puts Shout.yell_angrily("I'm angry")
# puts Shout.yell_happily("I'm happy")

module Shout
  def yell_angrily(words)
    puts words + "!!! :("
  end

  def yell_happily(words)
    puts words + "! :D"
  end
end

class Old_man
  include Shout
end

guy = Old_man.new
guy.yell_angrily("Get off my lawn")
guy.yell_happily("Nixon won")