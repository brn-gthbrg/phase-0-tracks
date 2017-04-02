class WordGame

  attr_reader :blank_word, :game_over, :guess_count

  def initialize(word, count)
    @secret_word = word
    @guess_count = count + 5
    @past_guess = []
    @blank_word = word_hide
    @game_over = false
  end

  def game_play(guess)
    status_update(guess)
    win_lose
  end


  private

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
    blank_word_arr = @secret_word.split(//)
    blank_word_arr.map! do |letter|
      letter = "_"
    end
    @blank_word = blank_word_arr.join(" ")
  end

  def status_update(letter)
    secret_word_arr = @secret_word.split(//)
    @blank_word.delete!(" ")
      if @secret_word.include?(letter)
        secret_word_arr.each_with_index do |thing, index|
          if thing == letter
            @blank_word.slice!(index)
            @blank_word.insert(index, letter)
          end
        end
      end
    puts @blank_word.split(//).join(' ')
    guess_count_updater(letter)
  end

  def win_lose
    if !@blank_word.include? ("_")
      @guess_count = 0
      puts "Congrats! You won!"
      @game_over = true
    elsif  @guess_count == 0
      puts "You're out of guesses, you lose!"
      @game_over = true
    else
      @blank_word
    end
  end

end

# USER INTERFACE

puts "Welcome to the Word Game"
puts "What is the secret word?"
input_wrd = gets.chomp.downcase
wrd_length = input_wrd.length
game = WordGame.new(input_wrd, wrd_length)
puts game.blank_word
until game.game_over == true
  puts "You have #{game.guess_count} guesses"
  puts "Guess a letter"
  guess = gets.chomp.downcase
  game.game_play(guess)
end