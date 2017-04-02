class WordGame

  def initialize(play_word)
    @play_word = play_word
    @guess_count = play_word.length
    @past_guess = []
  end

  def guess_update(guess)
    if @past_guess.include?(guess) == true
      @guess_count
    else
      @past_guess << guess
      @guess_count -= 1
    end
  end

  def word_hider
    blank_arr = @play_word.split(//)
    blank_arr.map! do |letter|
      letter = "_"
    end
    @blank_word = blank_arr.join(" ")
    puts @blank_word
  end

  def game_play
  end

  def win_lose
  end

end

# User Interface

puts "Welcome to the Word Game!"
puts "What is the word for this game?"
input_word = gets.chomp.downcase

game = WordGame.new(input_word)

game.word_hider

