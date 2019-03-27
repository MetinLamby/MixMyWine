class Wine < ApplicationRecord

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, uniqueness: true, presence: true



  scope :with_ingredients, ->(ingredients) { joins(:doses).where(doses: { ingredient: ingredients}) }
end
