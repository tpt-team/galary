class AddPictureToExhibition < ActiveRecord::Migration[5.0]
  def change
    add_reference :exhibitions, :picture, foreign_key: true
  end
end
