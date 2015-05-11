require 'csv'
require_relative 'items.rb'


class Parse

	#Load items to CSV File
    
    def load(csv)
	items = CSV.read('csv_file', :headers => true, :header_converters => :symbol)
	items.each {|items| Item.new(items.to_hash)}

	# State of CSV when it is loaded into items
	# Item object stores data in hases
	# Item objects are stored in an shelf
	# []
    
    # Save items to CSV File

	def self.save(file, data)
	  CSV.open(file, "wb") do |csv|
	    csv << data.first.keys
	    data.each{|hash|csv << hash.values}
	  end
	end
end




