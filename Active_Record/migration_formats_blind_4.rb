class CreatePeople <ActiveRecord
  def change
    create_table :people do |t|
      t.string :names
      t.string :description

      t.timestamps
    end
  end
end
