class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.string :name
      t.string :email
      t.string :description

      t.timestamps
    end
  end
end
