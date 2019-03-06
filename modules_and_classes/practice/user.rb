require_relative "validators"

class User
  include Validators
  def initialize(name, age, password)
    @name = name
    @age = age
    @password = password
  end

  def mature?
    @age >= 18
  end
end

1 файл с модулем и методом
hello, кот. возвращает строку
"Hello Max"
1 файл с классом Greeter
без методов
зайти в irb, и чтоб я такой
подошел и написал
#
greeter = Greeter.new
greeter.hello
#
а мне такой
"Hello Max"
