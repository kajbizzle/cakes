class Cake < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30, minimum: 3 }
  validates :restaurant, presence: true, length: { maximum: 30, minimum: 3 }
  validates :comments, presence: true, length: { maximum: 140, minimum: 3 }
end
