class Wine < ApplicationRecord


  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses


  validates :name, uniqueness: true, presence: true
  # validates :doses, uniqueness: true, presence: true

  monetize :price_cents


  scope :with_ingredients, ->(ingredients) { joins(:doses).where(doses: { ingredient: ingredients}) }
end
