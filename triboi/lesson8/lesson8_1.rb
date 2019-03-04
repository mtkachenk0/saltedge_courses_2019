require 'pry'
class Human
  def initialize(name, eyes_color, heigth, weigth ) #
    @gender     = self.class::GENDER #  :: метод доставания контант
    @name       = name
    @eyes_color = eyes_color
    @heigth     = heigth
    @weigth     = weigth
  end
  def self.stay
    p "I stay"
  end

  def breathe
    p "I breathe"
  end
  def eat
    p "I eat"
  end
  def walk
    p "I walk"
  end
  def look
    p "I look"
  end

end

class Man < Human
  GENDER = "man"   #константа
  def look
    p " I look using my eyes with color #{eyes_color}"
  end
end
class Woman < Human
  GENDER = "woman"   #константа
  def look
    p " I eat very much"
  end
end

olea = Woman.new("Olea", "blue", "90", "5.0")
oleg = Man.new("Oleg", "green","80","3.5" )
binding.pry
#p olea
#p oleg
# OOP = 3 парадигмы: Наследование, Инкапсуляция, Полиморфизм
# Абстрактный класс. Например мы не можем создать экзепляр от класса Human, но можем от Man и Woman
# которые в свою очередь наследуют атрибуты Human
