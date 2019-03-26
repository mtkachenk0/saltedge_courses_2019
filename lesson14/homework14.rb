# 2. 1 Answer:

class Array
	def has_string?
		select {|str| str.is_a?(String)}.any?
	end
end

# 2. 2 Answer:

class Array
	def sort_by_length
		sort_by{|str| str.length}
	end
end

# 2. 3 Answer:

class Array
	def mean
		inject{|sum, n| sum + n}.to_f / length
	end
end

# 2. 4 Answer:

class Array
	def unzip
		transpose.reverse
	end
end

# 2. 5 Answer:

class Array
	def super_compact
		delete_if {|a| a.nil? || a.empty?}
	end
end
