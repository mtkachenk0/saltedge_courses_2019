require 'pry' #init_debugger

class Human

  #creates methods that return attributes (ex.: Jenea.name)
  attr_reader :name, :eyes_color, :height, :weight
    #creates methods that can change attributes
  attr_writer :name, :eyes_color, :height, :weight
    #creates methods that return and change attributes (reader+writer)
  attr_accessor :name, :eyes_color, :height, :weight

  def initialize(name, eyes_color, height, weight) #class attributes
    @gender	     = self.class::GENDER ## :: for constant
    @name 	     = name
    @eyes_color  = eyes_color
    @height	     = height
    @weight 	   = weight
  end

  def name=(str) #attr_writer creates this method for you
    @name=str
  end

  def name #attr_reader creates this method for you
    @name
  end

  def self.stay
    puts "I stay"
  end

  def breathe
    puts "I breathe"
  end

  def eat
    puts "I eat"
  end

  def walk
    puts "I walk"
  end

  def drink
    puts "I drink"
  end

  def sleep
    puts "I sleep"
  end

  def look
    puts "I look"
  end
end

class Man < Human
  GENDER = "man" #constants are written in all cap

  def initialize(race, *args)
    @race = race
    super(*args) #sends arguments to parent class (Human), 
                 #allows to use Man arguments
  end

  def look
    puts "I look using my eyes with color #{@eyes_color}"
  end
end
    
class Woman < Human
  GENDER = "woman"
  
  def eat
    puts "I don't eat after 7 p.m."
  end
end

Jenea = Man.new("caucasian", "Jenea", "brown", "30", "3,5")

Ira = Woman.new("Irina", "hazel", "30", "3,4")

binding.pry #debugger

