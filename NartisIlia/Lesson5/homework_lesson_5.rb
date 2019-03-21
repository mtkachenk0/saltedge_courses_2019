# first task, version 1

num_ap=65
case num_ap
        when 1..20
        puts "first entrance"
        when 21..48
        puts "second entrance"
        when 49..90
        puts "third entrance"
    else
    puts "there are not such apartaments in this house" 
end

# first task, version 2

num_ap=12
case 
    when num_ap<=20&&num_ap>0
    puts "first entrance"
    when num_ap<=48&&num_ap>0
    puts "second entrance"
    when num_ap<=90&&num_ap>0
    puts "third entrance"
else
puts "there are not such apartaments in this house" 
end

# first task, version 3

num_ap=12
if num_ap<=20&&num_ap>0
    puts "first entrance"
   elsif num_ap<=48&&num_ap>0
    puts "second entrance"
   elsif num_ap<=90&&num_ap>0
    puts "third entrance"
else
puts "there are not such apartaments in this house" 
end

# second task, version 1

staj=25
case staj
        when 0..2
        puts "premium 0%"
        when 3..10
        puts "premium 10%"
        when 11..20
        puts "premium 20%"
        when 21..100 
        puts "premium 25%"
    else
    puts "miss in age" 
end

# second task, version 2

staj=10
case 
    when staj>=0&&staj<=2
    puts "premium 0%"
    when staj>=3&&staj<=10
    puts "premium 10%"
    when staj>=11&&staj<=20
    puts "premium 20%"
    when staj>=21
    puts "premium 25%"
    else
    puts "miss in age" 
end


# second task, version 3

staj=1
if staj<0
puts "miss in age"
   elsif staj<=2
    puts "premium 0%"
   elsif staj<=10
    puts "premium 10%"
   elsif staj<=20
    puts "premium 20%"
   elsif staj>=21
   puts "premium 25%"
end

# Third task

log_pas={"ivan"=>"334455", "alex"=>"777","petr"=>"b5678"}

login = "alex"   
password = "777"

i=0 
log_pas.each do |k,v|
i=i+1
    if k==login && v==password
        puts "Welcome!" 
break 
    elsif log_pas.size==i
            puts "Login failed" 
    end    
end


















