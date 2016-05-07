#Writing a method to encrypt and decrypt passwords

def encrypt(password)
   i = 0
 while i < password.length
     alpha = "abcdefghijklmnopqrstuvwxyz"
     var = password[i]
     num = alpha.index(var)
     num2 = num + 1
     num3 = num2%26
     puts alpha[num3]
   i += 1
 end
end
def decrypt(password)
   i = 0
 while i < password.length
     alpha = "abcdefghijklmnopqrstuvwxyz"
     var = password[i]
     num = alpha.index(var)
     num2 = num - 1
     puts alpha[num2]
   i += 1
 end
end
# nested method call works because it works like in basic math.  When you solve a math problem that has nested problems, you work from the most inner parenthesis and us eht result to work your way out.
# This method will do the same by taking the result and put back into another method that's within.

#Asking user to input choice to encrypt/decrypt password
#Entering password

puts "Secret Agent, do you want to encrypt (e) or decrypt (d) your password?"
user_choice = gets.chomp
puts "Please enter your encrypted/decrypted password"
user_password = gets.chomp

 if user_choice == "d"
   puts "Your password has been decrypted. Thank you for using our program! #{decrypt(user_password)}"
   elsif user_choice == "e"
   puts "Your password has been encrypted. Thank you for using our program! #{encrypt(user_password)}"
   else
  puts "you did not enter e or d, please try again"
 end
