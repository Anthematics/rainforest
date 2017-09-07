
class Review < ApplicationRecord
  belongs_to :product
  validates :comment, :rating , presence: true
  validates :rating , numericality: { only_integer: true }
end
