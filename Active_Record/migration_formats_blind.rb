#migration_formats_blind.rb

class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :description
      t.string :class

      t.timestamps :null false
    end
  end
end

