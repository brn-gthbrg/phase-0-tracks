class WordGame

  attr_reader :guess_count, :blank_word

  def initialize(word, count)
    @secret_word = word
    @guess_count = count + 5
    @past_guess = []
    @blank_word = word_hide
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
      if @secret_word.include?(letter)
        @blank_word.delete!(" ")
        i = 0
      while i < @secret_word.length
        if secret_word_arr[i] == letter
          @blank_word.slice!(i)
          @blank_word.insert(i, letter)
        end
        i += 1
      end
    end
    puts @blank_word.split(//).join(' ')
    guess_count_updater(letter)
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
puts "What is the secret word?"
input_wrd = gets.chomp.downcase
wrd_length = input_wrd.length
game = WordGame.new(input_wrd, wrd_length)
puts game.blank_word
while game.guess_count > 0
  puts "You have #{game.guess_count} guesses"
  puts "Guess a letter"
  guess = gets.chomp.downcase
  game.game_play(guess)
end