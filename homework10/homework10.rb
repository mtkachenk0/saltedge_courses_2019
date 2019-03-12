courses = {
	"Alex" => "Pogoretchi",
	"Alexei" => "Gostev",
	"Maxim" => "Tkachenco"
}

def list(hash)
	first_names = hash.keys
  	last_names = hash.values
	first_names.product(last_names).map { |i| i.join (" ") }
end

puts list(courses)