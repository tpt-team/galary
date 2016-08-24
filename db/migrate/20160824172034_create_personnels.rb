class CreatePersonnels < ActiveRecord::Migration[5.0]
  def change
    create_table :personnels do |t|
      t.integer :pasport_number
      t.string :name
      t.string :position
      t.integer :pay

      t.timestamps
    end
  end
end
