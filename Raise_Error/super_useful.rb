# PHASE 2
def convert_to_int(str)
  #begin the running code
  begin
    Integer(str)
  #return nil if it's an error
  rescue ArgumentError => e
    nil
  end
end


# PHASE 3
# FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if ["apple", "banana", "orange"].include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else
    raise StandardError
  end
end

def feed_me_a_fruit
  begin
    puts "Hello, I am a friendly monster. :)"
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit)
  rescue => e
    retry if maybe_fruit == 'coffee'
  end
end

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
      @name = name
      raise "Your friend needs a name!" if @name.empty?
      @yrs_known = yrs_known
      raise "Years known must be greater than 5 to be a friend" if @yrs_known < 5
      @fav_pastime = fav_pastime
      raise "You're missing a favorite past time" if @fav_pastime.empty?
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me."
  end
end
