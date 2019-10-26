class Station < ApplicationRecord
  belongs_to :property

  validates :route, presence: true, length: { maximum: 100 }
  validates :name, presence: true, length: { maximum:50 }
  validates :time, presence: true, numericality: { only_integer: true }
end
