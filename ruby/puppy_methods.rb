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
