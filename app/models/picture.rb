class Picture < ApplicationRecord
  belongs_to :order
  belongs_to :author
  belongs_to :genre

  has_many :exhibitions
end
