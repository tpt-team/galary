class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.date :date
      t.integer :price
      t.references :author, foreign_key: true
      t.references :genre, foreign_key: true
      t.references :exhibition, foreign_key: true

      t.timestamps
    end
  end
end
