# Ask for spy's name
# Separate first and last name
# switch placement of first and last name
# separate names into
# change all vowels to next vowel in alphabet
# change each consonant to next consonant in alphabet



# NEXT VOWEL METHOD
def next_vowel(str)
    vowel = 'aeiou'
  str = str.split('')
  str_new = str.map! do |character|
      if vowel.index(character)
        if character == vowel[4]
          character = vowel[0]
        else
          character = vowel[vowel.index(character) + 1]
        end
      else
        character
      end
    end
     str_new.join()
end



# NEXT CONSONANT METHOD
def next_consonant(str)
    consonant = 'bcdfghjklmnpqrstvwx'
  str = str.downcase
  str = str.split('')
  str_new = str.map! do |character|
      if consonant.index(character)
        if character == consonant[18]
          character = consonant[0]
        else
          character = consonant[consonant.index(character) + 1]
        end
      else
        character
      end
    end
     str_new.join()
end

# USER INTERFACE
name_list = {}
input_name = nil
until input_name == "quit" || input_name == ""
    puts "What is your first and last name? Type 'quit' to exit."
      input_name = gets.chomp
      if input_name == "quit" || input_name == ""
        puts "Exiting Alias Generator"
      else
        #Switch vowels
        alias_step1 = next_vowel(input_name)
        #Switch consonants
        alias_step2 = next_consonant(alias_step1)
        #Format alias name
        alias_final = alias_step2.split.map(&:capitalize).join(' ')
        p "#{alias_final} is an alias for #{input_name}"
      end
end