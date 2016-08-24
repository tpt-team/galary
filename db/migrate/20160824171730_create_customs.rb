class CreateCustoms < ActiveRecord::Migration[5.0]
  def change
    create_table :customs do |t|
      t.integer :pasport_number
      t.string :name
      t.integer :tel_number

      t.timestamps
    end
  end
end
