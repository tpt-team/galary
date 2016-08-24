class Exhibition < ApplicationRecord
  belongs_to :picture

  has_many :personnels
end
