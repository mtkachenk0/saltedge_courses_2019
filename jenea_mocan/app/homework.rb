# 2.1 Answer:
class Array
	def has_string?
		select do |i|
			i.is_a?(String) 
		end.any?
	end
end

# 2.2 Answer:
class Array
	def sort_by_length
		sort_by {|i| i.length}
	end
end

# 2.3 Answer:
class Array
	def mean
		inject{ |sum, n| sum + n }.to_f / size
	end
end

# 2.4 Answer:
class Array
	def unzip
		transpose.reverse
	end
end

# 2.5 Answer:
class Array
	def super_compact
		delete_if {|i| i.nil? or i.empty?}
	end
end
