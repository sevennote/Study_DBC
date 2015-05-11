 require_relative 'items.rb'
 require_relative 'shelf.rb'


describe Item do

	 let(:apple) {Item.new({:name=>"apple", :expiration_date=>"6/9/2015", :temperature=>"none", :size=>"small"})}
     let(:banana) {Item.new({:name=>"banana", :expiration_date=>"6/9/2015", :temperature=>"none", :size=>"small"})}
     let(:cereal_box) {Item.new({:name=>"cereal_box", :expiration_date=>"6/9/2015", :temperature=>"none", :size=>"large"})}

	describe "#initialize" do
	  it "apple.name should equal name" do
	  	expect(apple.name).to eq('apple')
	  end
	end

end


describe Shelf do

  	before :all do
	  	@array = [
		  Item.new({:name=>"apple", :expiration_date=>"6/9/2015", :temperature=>"none", :size=>"small"}),
		  Item.new({:name=>"banana", :expiration_date=>"6/9/2015", :temperature=>"none", :size=>"small"}),
		  Item.new({:name=>"cereal_box", :expiration_date=>"6/9/2015", :temperature=>"none", :size=>"large"})
		]
	end

	before :each do
      @s = Shelf.new(@array)
	end



	describe "#initialize" do
      it "at initialize it should equal a self" do
	  	expect(@s.shelf_items[0].name).to eq("apple")
	  end
	end

	describe "#remove_item" do
	  it "removes an item if it's name is equal to it's input" do
	    original_length = @s.shelf_items.length
	    @s.remove_item("apple")
	    expect(@s.shelf_items.length).to eq(original_length - 1)

	  end
	end
	describe "#add_item" do
	  it "it should add an item" do
		  original_length = @s.shelf_items.length
		  @s.add_item({:name => "kazoo"})
		  expect(@s.shelf_items.length).to eq(original_length + 1)
	  end
	end
end