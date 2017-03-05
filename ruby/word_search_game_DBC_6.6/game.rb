class WordGame

  attr_reader
  attr_accessor :secret_word, :guess_count

  def initialize
    @past_guess = []
    @past_guess = @input_guess
    @guess_count = 0
    @secret_word = ""
  end

  def input_guess(letter)
    @past_guess << letter
  end

  def secret_word
    puts "What is the secret word?"
    @secret_word = gets.chomp
    @secret_word_arr = @secret_word.split(//)
    @guess_count = @secret_word.length
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
    while @guess_count != 0
      if @secret_word.include?(letter)
        instances = @secret_word.count(letter)
        instances.times do
        position = @secret_word[letter]
        @blank_word.delete(" ")
        @blank_word.delete(position)
        @blank_word.insert(position.to_i, letter)
        @secret_word.delete(letter)
        end
        @guess_count -= 1
      else @guess_count -=1
          puts "this message"
      end
    end
    puts @blank_word
  end

end

# USER INTERFACE

puts "Welome to the Word Game"
game = WordGame.new

game.secret_word
puts game.guess_count
puts game.word_hide
puts "Guess a letter"
guess = gets.chomp

# puts game.letter_check(guess)
puts game.status_update(guess)
puts game.guess_count
