class Puppy
  def initialize
    p "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times{p "Woof!"}
  end

  def roll_over
    p "**rolls over**"
  end

  def dog_years(human_age)
    dog_years = human_age/7
    puts "Your dog is #{dog_years} old."
  end

  def stay
    p "**stays**"
  end
end


#Driver Codes
puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(5)
puppy.roll_over
puppy.dog_years(14)
puppy.stay


#Creating my own Class (Release 2)

class Spiderman
  def initialize
    p "Initializing a new spiderman instance...."
  end

  def web(number)
    number.times{p "**web!**"}
  end

  def crawl(building)
    p "I'm crawling on #{building}!"
  end

  def swinging
    p "**swinging**"
  end

  def criminals(num_of_criminals_captured)
    p "I captured #{num_of_criminals_captured} criminals!"
  end

end

spiderman_array =[]
i = 0
until i > 50
  spiderman_array[i] = Spiderman.new
  spiderman_array << i
  i += 1
end

ObjectSpace.each_object Spiderman do |data|
data.web(5)
data.crawl("John Hancock")
data.swinging
data.criminals(10)
end
