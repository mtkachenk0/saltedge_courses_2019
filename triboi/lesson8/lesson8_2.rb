require 'pry'

class Human

  #attr_reader :name, :eyes_color, :heigh, :weigth
  #делает доступными атрибуты инстанса из вне
  #attr_writer :name, :eyes_color, :heigh, :weigth
  #делает доступными атрибуты инстанса для записи
  #attr_accesor :name, :eyes_color, :heigh, :weigth
  #делает доступными для записи и чтения атрибута
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

  def initialize(race, *args)
    @race = race
    super(*args)
  end

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
oleg = Man.new("ukr","Oleg", "green","80","3.5" )
binding.pry
#p olea
#p oleg
# OOP = 3 парадигмы: Наследование, Инкапсуляция, Полиморфизм
# Абстрактный класс. Например мы не можем создать экзепляр от класса Human, но можем от Man и Woman
# которые в свою очередь наследуют атрибуты Human
