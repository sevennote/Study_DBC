require_relative 'items.rb'

class Shelf
	attr_reader :shelf_items
	def initialize(shelf_items)
		@shelf_items = shelf_items
	end
    def to_s
       shelf_items.each {|item| puts item.to_s}
    end
    def remove_item(input)
    	shelf_items.delete_if { |item| (item.name == input) }
    end
    def add_item(input)
    	shelf_items << Item.new(input)
    end
end


   #    apple = Item.new({:name=>"apple", :expiration_date=>"6/9/2015", :temperature=>"none", :size=>"small"})
	  # banana = Item.new({:name=>"banana", :expiration_date=>"6/9/2015", :temperature=>"none", :size=>"small"})
	  # cereal_box = Item.new({:name=>"cereal_box", :expiration_date=>"6/9/2015", :temperature=>"none", :size=>"large"})
   #    array = [apple,banana,cereal_box]
   #    s = Shelf.new(array)
   #    p s.shelf_items[0].name