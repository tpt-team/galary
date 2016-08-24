class CreateAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :authors do |t|
      t.integer :pasport_number
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
