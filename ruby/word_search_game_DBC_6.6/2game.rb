class WordGame

  def initialize(play_word)
    @play_word = play_word
    @guess_count = play_word.length
    @past_guess = []
  end

  def guess_update(letter)
    if @past_guess.include?(letter)
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
        # @play_word.gsub(//, "_ ").chomp
      end
    @blank_word = play_arr.join(" ")
  end

  def game_play(letter)
    @blank_word.delete!(" ")
    match_index_arr = []
      if @play_word.include?(letter) == true
        play_arr = @play_word.split(//)
        i = 0
        play_arr.each do |x|
          if x == letter
            location = play_arr.index(letter) + i
            @blank_word.slice!(location)
            @blank_word.insert(location, letter)
            match_index_arr << location
            play_arr.slice!(location)
            # puts play_arr
            i += 1
          end
        end
        match_index_arr
      end
    puts @blank_word.split(//).join(" ")
    guess_update(letter)
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

puts "Guess a letter"
guess = gets.chomp

game.game_play(guess)

