class AddImageToPicture < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :image, :string
    add_column :pictures, :name, :string
  end
end
