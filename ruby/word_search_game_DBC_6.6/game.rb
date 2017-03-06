class WordGame

  attr_reader :past_guess
  attr_accessor :secret_word, :guess_count, :past_guess

  def begin_game
    puts "What is the secret word?"
    @secret_word = gets.chomp
   #  @secret_word_arr = @secret_word.split(//)
    @guess_count = @secret_word.length
  end

  def initialize
    @past_guess = []
  end

  # def guess_recorder(letter)
   # @past_guess = letter
  # end

  def guess_count_updater(letter)
    if @past_guess.include?(letter)
      @guess_count
    else
      @guess_count -= 1
    end
    @past_guess = letter
  end

  def word_hide
    @blank_word_arr = @secret_word.split(//)
    @blank_word_arr.map! do |letter|
      letter = "_"
    end
    @blank_word = @blank_word_arr.join(" ")
  end

#  def letter_check(letter)
#    if @secret_word.include?(letter)
#      @correct = true
#    else @correct = false
#    end
#  end

  def status_update(letter)
      if @secret_word.include?(letter)
        @blank_word.delete!(" ")
        instances = @secret_word.count(letter)
        instances.times do
        position = @secret_word.rindex(letter)
        @blank_word.slice!(position)
        @blank_word.insert(position.to_i, letter)
        end
      end
    @blank_word
  end

  def win_lose
    if @blank_word.include?("_")
      puts "You Lose!"
    else
      puts "You won!"
    end
  end

end

# USER INTERFACE

puts "Welome to the Word Game"
game = WordGame.new

game.begin_game
puts game.word_hide
until game.guess_count == 0
  puts "You have #{game.guess_count} guesses"
  puts "Guess a letter"
  guess = gets.chomp
  # game.guess_recorder(guess)
  puts game.status_update(guess)
  game.guess_count_updater(guess)
end
game.win_lose