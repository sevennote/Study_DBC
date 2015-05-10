I'm going to recreate a refrigerator as an example for my POODR.
The refrigerator will contain items.
It will interact with people.
The refrigerator will only be able to hold a certain amount of items.
The refrigerator will have a temperature setting.
The temperature setting should be controlled by a thermostat.
This will effect the status of the items.
The refrigerator is the largest model.
This model will interact with people
via a controller
and the view.

The items will have certain attributes.

each item has a

name, expiration_date, temperature, size,


My_first task is to create three items in a CSV file
these items will load into an item class.


my CSV file

name, expiration_date, temperature, size

"apple","6/9/2015", "none", "small"
"banana","6/9/2015", "none", "small"
"cereal_box", "6/9/2015", "none", "large"

Parser.rb

require 'csv'

items = CSV.read('fridge.csv', :headers => true, :header_converters => symbol)

