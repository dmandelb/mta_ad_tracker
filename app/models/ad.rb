class Ad < ApplicationRecord
  has_and_belongs_to_many :cars
  belongs_to :company
end
