class Restaurant < ApplicationRecord
  has_many :reviews
  CATEGORY = %w(chinese italian japanese french belgian)
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
