# PSEUDO CODE
# ask for a password
# get the password
# enter only letters. no numbers or symbols
# every letter that user puts in the computer will
# choose the following letter corresponding to next letter in the alphabet
# if z return to a

def encrypt(password)
   encrypted_password = ""
   index = 0
  while index < password.length
      if password[index] == "z"
      password[index] = "a"
      encrypted_password = encrypted_password + password[index]
    index += 1

    else
    encrypted_password = encrypted_password + password[index].next
    index += 1
    end
  end

   p encrypted_password
end

# define decrypt(password)
# Get password
# Read first letter of password
# Match to index of letter relative to alphabet
# change letter to previous letter of alphabet


def decrypt(password)
    decrypt_password = ""
    i = 0
    alphabet = "abcdefghijklmnopqrstuvwxyz"
  while i < password.length
    if password[i] == "a"
      password[i] = "z"
      decrypt_password = decrypt_password + password[i]
    i += 1
    elsif password[i] == " "
    i += 1
    else
      letter = password[i]
      position = alphabet.index(letter)
      position -= 1
      password[i] = alphabet[position]
    i += 1

    end
  end
  puts decrypt_password
end

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")