def interval(a, b)
  (a..b).to_a.select { |num| num % 7 == 0 && num % 5 != 0 }.join(" - ")
end
