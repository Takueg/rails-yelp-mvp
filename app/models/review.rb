class Review < ApplicationRecord
  belongs_to :restaurant

  # validations
  validates :content, :rating, presence: true
  validates :rating, :inclusion => 0..5
  validates :rating, numericality: { only_integer: true }
end
