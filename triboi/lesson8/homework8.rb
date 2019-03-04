class BortPC
  attr_accesor :model, :motor, :fuel, :copacity, :weigth

  def initialize(model, motor, weigth, copacity, fuel) #
    @type_fuel  = self.class::TYPEFUEL
    @model      = model
    @motor      = motor
    @fuel       = fuel
    @copacity   = copacity
    @weigth     = weigth
  end

def m_fuellevel
#  fuel / copacity
return p "hi"
end

def m_rashod
  rashod = weigth * motor * koef
end

def togas
  togas1 = copacity / rashod
end

end
class Petrol < BortPC
  TYPEFUEL = "Petrol"
  def kkoef
    koef = weigth / 1230
  end
end
class Disel < BortPC
  TYPEFUEL = "Disel"
  def kkoef
    koef = weigth / 700
  end
end
 bmw5 = Disel.new("BMW 5 e39", 3.0, 1510, 60, 4)
 bmw7 = Disel.new("BMW 7 e65", 3.0, 2480, 84, 40)
 alifa = Disel.new("Alifa Romeo 159",1.9,1610,70, 35)
 alifa = Petrol.new("Alifa Romeo gulia",2.9, 1580, 58, 56)
p bmw5.class::TYPEFUEL

p bmw5.fuellevel
