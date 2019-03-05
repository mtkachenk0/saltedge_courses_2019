require 'pry'
require_relative 'module'

class TestClass
	include SomeModule::InnerModule

	def hello
		puts "Hello!"
	end

	def run!
		binding.pry
		1
	end
end

test = TestClass.new
test.run!
