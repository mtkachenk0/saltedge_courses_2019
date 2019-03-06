require 'pry'
require_relative 'bord_comp.rb'
include BordComp

class Avto
   MATERIAL="Steel"
    
    def eng_coff
       
        if @car_brand.include?("Alfa Romeo") && @type_eng == "Disel"
        ((@weight.to_f)/1230)/2  
            elsif @car_brand.include?("Alfa Romeo") && @type_eng == "Benzin"
            ((@weight.to_f)/700)/1.5
            elsif @type_eng == "Benzin"
            (@weight.to_f)/700    
            elsif @type_eng == "Disel"
            (@weight.to_f)/1230
        end
    end
end
    


e39 = Avto.new("BMW 5 e39","Disel",1510,3,60,25)
e65 = Avto.new("BMW 7 e65","Disel",2480,3,84,50)

al159 = Avto.new("Alfa Romeo 159","Disel",1610, 1.9, 70, 5)
al_gulia = Avto.new("Alfa Romeo Gulia","Benzin",1580, 2.9, 58, 50)


binding.pry
1







