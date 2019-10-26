class Property < ApplicationRecord

  validates :name, presence: true, length: { maximum: 50}
  validates :rent, presence: true, numericality: { only_integer: true}
  validates :address, presence: true, length: { maximum: 100}
  validates :age, presence: true, numericality: { only_integer: true }
  validates :remarks, presence: true, length: { maximum: 150}
end
