require 'pry'
class View
	def self.greeting
	  "Welcome to Shelf List.\nFor list press :L,\nTo add an item press :A,\nTo remove an item press :D,\nTo Quit press :Q."
	end
	def self.input
		input = gets.chomp
	end
	def self.exit
		"Thank You for using Shelf List!\n Can't wait till Fridge list comes out!"
	end
	binding.pry
end