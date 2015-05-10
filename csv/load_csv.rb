#A CSV output is always in the form of an array.



 require 'csv'
no_headers = CSV.read('test.csv')
flash = CSV.read('test.csv', :headers => true, :header_converters => :downcase, :header_converters => :symbol, :converters => :numeric, :write_headers => true)
hello = CSV.parse("Question,Answer,Status,Times_wrong\nWhat is my favorite color?,green,false,0", :headers => true, :header_converters => :symbol )


CSV.open('new_test.csv', 'w') do |csv|
  flash.each do |row|
    csv << row
    end
end

# p no_headers
# p flash.to_s
# p flash.to_a

flash << ["where are you","I am here",false,0]
flash.each {|row| p row[:question]}
