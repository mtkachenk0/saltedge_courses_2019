require 'pry'
require_relative 'test'

class TestClass
	#include SomeModule::InnerModule # copier olny InnerModule from SomeModule
	extend SomeModule 
	#extend sends module to class
	#include sends module to instance
	def hello
		puts "hello!"
	end

	def run!
		binding.pry
		1
	end
end

class LearnModules
	include SomeModule
		
	def greetings
		puts CONSTANT
	end
end

test = TestClass.new
test.run!