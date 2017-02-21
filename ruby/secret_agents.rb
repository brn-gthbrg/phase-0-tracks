# PSEUDO CODE
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

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")