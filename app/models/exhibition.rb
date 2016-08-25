class Exhibition < ApplicationRecord
  has_many :pictures
  has_many :personnels
end
