class Santa
#attributes for getter and setter methods
attr_accessor :name, :gender, :ethnicity, :age
#Initialize class Santa
  def initialize(name, gender, ethnicity)
    @name = name
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    puts "Initializing Santa instance ... "
  end
 #method to allow Santa to speak
  def speak
    puts "Ho, ho, ho! Haaaappy Holidays!"
  end
#method to allow Santa to tell you what type of cookie he ate
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end
#method that allows to share what age santa is
  def celebrate_birthday
    @age += 1
  end
#method loop that allows you to rearrange the ranking of deers
  def get_mad_at(trouble_deer)
    reindeer_rankings = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    if reindeer_rankings.include?(trouble_deer)
      move_deer = reindeer_rankings.delete(trouble_deer)
      reindeer_rankings << move_deer
      puts "********************************************"
      puts "New Ranking: "
      reindeer_rankings.each do |name|
        puts "#{name}"
      end
    else
        puts "#{reindeer_rankings}"
    end
    puts "********************************************"
  end

end
