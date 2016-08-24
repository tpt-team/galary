class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :picture, foreign_key: true
      t.references :custom, foreign_key: true
      t.integer :price
      t.references :personnel, foreign_key: true

      t.timestamps
    end
  end
end
