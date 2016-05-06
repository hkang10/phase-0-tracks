#Writing a method within a method

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
end


decrypt(encrypt("swordfish"))

#Since we have a method nested inside a method, since it pass through one paramater, we can still individually run through each method
