class Order < ApplicationRecord
  belongs_to :custom
  belongs_to :personnel

  has_many :pictures
end
