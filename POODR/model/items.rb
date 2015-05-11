require 'pry'
class Item
	attr_reader :name, :expiration_date, :temperature, :size

	def initialize(args = {})
		@name = args[:name] || "unknown"
		@expiration_date = args[:expiration_date] || "unknown"
		@temperature = args[:temperature] || "room_temp"
		@size = args[:size] || "unknown"
	end
	def to_s
		"Item:#{self.name} Expiration Date:#{self.expiration_date} Temperature:#{self.temperature} Size: #{self.size}"
	end
	binding.pry
end

