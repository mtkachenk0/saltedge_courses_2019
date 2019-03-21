module BordComp
 attr_accessor :car_brand, :weight, :value_eng
    
    def initialize(car_brand, type_eng, weight, value_eng, value_tank, value_fuel)
      #  @MATERIAL = self.class::MATERIAL
        @car_brand = car_brand
        @type_eng = type_eng
        @weight = weight     
        @value_eng = value_eng
        @value_tank = value_tank
        @value_fuel = value_fuel
    end
 
   
    def average_fuel(x=0)
        if x==0
            puts "srednii rashod topliva #{((@weight*@value_eng*eng_coff)/1000).ceil(1)} litrov"
        else
            ((@weight*@value_eng*eng_coff)/1000).ceil(1)    
        end
    end
    
    def ratio_fuel
        (@value_fuel.to_f/@value_tank).ceil(2)
    end
    
    def distance_to_next(x=0)
        if x==0    
            puts "Vsego ostalosi proehati #{((@value_fuel/((@weight*@value_eng*eng_coff)/1000)).to_f*100).ceil(1)} KM"
        else
            ((@value_fuel/((@weight*@value_eng*eng_coff)/1000)).to_f*100).ceil(1)
        end
    end
    
    def status
        {"car brand"=>@car_brand,"type fuel"=> @type_eng, "weight"=>@weight, "value engine"=>@value_eng, 
        "value tank"=> @value_tank, "value fuel"=>@value_fuel, "srednii rashod topliva"=> average_fuel(1), 
        "ostalosi proehati"=> distance_to_next(1), "koeff topliva v bake"=> ratio_fuel,"material kuzova"=>self.class::MATERIAL}
    end
    
end












