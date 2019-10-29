class Property < ApplicationRecord

  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations, allow_destroy: true

  validates :name, presence: true, length: { maximum: 50}
  validates :rent, presence: true, numericality: { only_integer: true}
  validates :address, presence: true, length: { maximum: 100}
  validates :age, presence: true, numericality: { only_integer: true }
  validates :remarks, presence: true, length: { maximum: 150}
end
