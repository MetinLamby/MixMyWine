class Dose < ApplicationRecord


  belongs_to :wine
  belongs_to :ingredient

  validates :wine, presence: true
  validates :ingredient, presence: true
  validates :wine, uniqueness: { scope: :ingredient }

end
