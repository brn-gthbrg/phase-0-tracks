class WordGame

  attr_reader :game_over, :blank_word

  def initialize(play_word)
    @play_word = play_word
    @guess_count = play_word.length + 3
    @past_guess = []
    @game_over = false
    @blank_word = word_hider
  end

  def play_mode(guess)
      game_play(guess)
      win_lose
  end


  private

  def guess_update(letter)
    if @past_guess.include?(letter)
      puts "That letter has already been used"
      @guess_count
    else
      @past_guess << letter
      @guess_count -= 1
    end
    puts "The guess count is #{@guess_count}"
  end

  def word_hider
    play_arr = @play_word.split(//)
      play_arr.map! do |letter|
        letter = "_"
      end
    @blank_word = play_arr.join(" ")
  end

  def game_play(letter)
    play_arr = @play_word.split(//)
    @blank_word.delete!(" ")
      if @play_word.include?(letter) == true
        play_arr.each_with_index do |thing, index|
          if thing == letter
            @blank_word.slice!(index)
            @blank_word.insert(index, letter)
          end
        end
      end
    puts @blank_word.split(//).join(' ')
    guess_update(letter)
  end

  def win_lose
    if !@blank_word.include?("_")
      puts "Congratulations! You won!"
      @game_over = true
    elsif @guess_count == 0
      puts "You're out of guesses, you lose!"
      @game_over = true
    else
      @blank_word
    end
  end

end

# User Interface

puts "Welcome to the Word Game!"
puts "What is the word for this game?"
input_word = gets.chomp.downcase
print "\e[2J"
print "\e[H"

game = WordGame.new(input_word)
puts game.blank_word

until game.game_over
  puts "Guess a letter"
  guess = gets.chomp.downcase
  game.play_mode(guess)
end