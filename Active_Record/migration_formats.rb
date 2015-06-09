class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end




class AddPartNumbertoProducts < ActiveRecord::Migration
  def change
    add_column :products, :part_number, :string
  end
end



#Or

class AddPartNumbertoProducts < ActiveRecord::Migration
  def change
    change_table :products to |t|
      t.remove :part_number
    end
  end
end


## test these for the migrations
