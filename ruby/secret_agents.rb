# ENCRYPT PSEUDO CODE
# ask for a password
# get the password
# enter only letters. no numbers or symbols
# every letter that user puts in the computer will
# choose the following letter corresponding to next letter in the alphabet
# if z return to a
# keep spaces the same

def encrypt(password)
  index = 0
    while index < password.length
      if password[index] == " "
        password[index] = password[index]
      elsif password[index] == "z"
        password[index] = "a"
      else
        password[index] = password[index].next
      end
      index += 1
    end
  puts password
end

# DECRYPT PSEUDO CODE
# define decrypt(password)
# Get password
# Read first letter of password
# Match to index of letter relative to alphabet
# change letter to previous letter of alphabet


def decrypt(password)
  length = password.length
  index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
    while index < password.length
      if password[index] == " "
        password[index] = password[index]
      else
        character = password[index]
        position = alphabet.index(character)
        position = position - 1
        password[index] = alphabet[position]
      end
      index += 1
    end
  puts password
end

# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")

# Testing a nested method
# decrypt(encrypt("swordfish"))


# RELEASE 5 INTERFACE
# Ask secret agent whether they want to decrypt or encrypt a password
# use if/else statements to choose
# Ask for password
# Processes request
# print results to screen
# exit

# Interface
p "Do you want to decrypt or encrypt a password?"
choice = gets.chomp
p "What is the password?"
input_password = gets.chomp

if
  choice == "encrypt"
  encrypt(input_password)
elsif
  choice == "decrypt"
  decrypt(input_password)
else
  p "Answer not recognized. Run program again."
end

p input_password