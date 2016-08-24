class CreateExhibitions < ActiveRecord::Migration[5.0]
  def change
    create_table :exhibitions do |t|
      t.string :location
      t.date :date
      t.time :time
      t.integer :price

      t.timestamps
    end
  end
end
