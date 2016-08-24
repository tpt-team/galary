class Personnel < ApplicationRecord
  belongs_to :exhibition

  has_many :orders
end
