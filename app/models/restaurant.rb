class Restaurant < ApplicationRecord
  validates :name, :address, presence: true
  validates :category, inclusion: ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
end
