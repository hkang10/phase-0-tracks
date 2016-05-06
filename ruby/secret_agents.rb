def encrypt(password)
  i=0
  while i < password.length
   var = password[i]
    puts var.next
    i += 1
  end
end

encrypt("abc")

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

decrypt("aaa")
