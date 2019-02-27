# 1. 
a = [1, 15, 26, 32, 48, 74, 107]

# 1.1.
i = a.index(a.compact.max)

# 1.2.
a.select do |num|
  num % 2 == 0 || num % 3 == 0
end

# 1.3.
a.reject do |num|
  num % 6 == 0
end

# 1.4.
a.include?(16) || a.include?(26)

a.select { |x| [16, 26].include? x }.any?

# 2.
songs = [
  {title: "Closer", artist: "Lemaitre", year: 2016},
  {title: "Lush life", artist: "Zara Larsson", year: 2017},
  {title: "Angetenar", artist: "Rompasso", year: 2016},
  {title: "Wind of Change", artist: "Scorpions", year: 1991 },
  {title: "Send me an Angel", artist: "Scorpions", year: 1985 }
]

# 2.1.
songs.map do |h|
  h[:title]
end

songs.each { |h| puts h[:title] }


# 2.2
songs.each do |h|
  if h[:year] >= 1990 && h[:year] < 2000
    puts h[:artist]
  end
end

songs.each { |h| puts h[:title] if h[:year]>= 1990 && h[:year] < 2000 }

# 2.3.
songs.select do |h|
  songs.count { |hash| hash[:artist] == h[:artist] } >= 2
end.map {|song| song[:artist]}.uniq

b = {}
songs.each do |hash|
  if b.keys.include? hash[:artist]
    b[hash [:artist]] += 1
  else
    b [hash [:artist]] = 1
  end
end


# 2.4.
songs.sort_by { |song| song[:year] }.first
