class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :description
      t.string :species
      t.string :owner_story
      t.string :gender
      t.string :owner_email
      t.string :owner_name

      t.timestamps
    end
  end
end
