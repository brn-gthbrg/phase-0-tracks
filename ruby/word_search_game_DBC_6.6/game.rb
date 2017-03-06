class WordGame

  attr_accessor :secret_word, :guess_count, :past_guess

  def initialize
    @past_guess = []
  end

  def begin_game
    puts "What is the secret word?"
    @secret_word = gets.chomp
    @secret_word_arr = @secret_word.split(//)
    @guess_count = @secret_word.length
  end

  def guess_count_updater(letter)
    if @past_guess.include?(letter)
      puts "That letter has already been used"
      @guess_count
    else
      @past_guess << letter
      @guess_count -= 1
    end
  end

  def word_hide
    @blank_word_arr = @secret_word.split(//)
    @blank_word_arr.map! do |letter|
      letter = "_"
    end
    @blank_word = @blank_word_arr.join(" ")
  end

def status_update(letter)
      if @secret_word.include?(letter)
        @blank_word.delete!(" ")
        i = 0
      while i < @secret_word.length
        if @secret_word_arr[i] == letter
          @blank_word.slice!(i)
          @blank_word.insert(i, letter)
        end
        i += 1
      end
    end
    @blank_word.split(//).join(' ')
  end


  def win_lose
    if !@blank_word.include? ("_")
      @guess_count = 0
      puts "Congrats! You won!"
    elsif  @guess_count == 0
      puts "You're out of guesses, you lose!"
    else
      @blank_word
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
  puts game.status_update(guess)
  game.guess_count_updater(guess)
  game.win_lose
end