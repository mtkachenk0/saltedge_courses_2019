require 'pry'
class Avto

    attr_accessor :car_brand, :weight, :value_eng
    
    def initialize(car_brand, weight, value_eng, value_tank, value_fuel)
    @TYPE_ENG = self.class::TYPE_ENG
    @car_brand = car_brand
    @weight = weight     
    @value_eng = value_eng
    @value_tank = value_tank
    @value_fuel = value_fuel
    end
    def average_fuel
    puts "srednii rashod topliva #{((@weight*@value_eng*eng_coff)/1000).ceil(1)} litrov"
    end
    def ratio_fuel
    (@value_fuel.to_f/@value_tank).ceil(2)
    end
    def distance_to_next
    puts "Vsego ostalosi proehati #{((@value_fuel/((@weight*@value_eng*eng_coff)/1000)).to_f*100).ceil(1)} KM"
    end
    def status
    {"car brand"=>@car_brand, "weight"=>@weight, "value engine"=>@value_eng, "value tank"=> @value_tank, "value fuel"=>@value_fuel}
    end
end
class Disel < Avto
    TYPE_ENG = "DISEL"
    def eng_coff
    (@weight.to_f)/1230
    end
end
class Benzin < Avto
    TYPE_ENG = "BENZIN"
    def eng_coff
    (@weight.to_f)/700
    end
end
class Disel_al_rom < Avto
    TYPE_ENG = "DISEL"
    def eng_coff
    ((@weight.to_f)/1230)/2
    end
end
class Benzin_al_rom < Avto
    TYPE_ENG = "BENZIN"
    def eng_coff
    ((@weight.to_f)/700)/1.5
    end
end



e39 = Disel.new("BMW 5",1510,3,60,25)
e65 = Disel.new("BMW 7",2480,3,84,50)

al159 = Disel_al_rom.new("Alfa Romeo 159", 1610, 1.9, 70, 5)
al_gulia = Benzin_al_rom.new("Alfa Romeo Gulia", 1580, 2.9, 58, 50)


binding.pry








