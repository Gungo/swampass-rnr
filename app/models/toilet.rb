class Toilet < ApplicationRecord
  has_many :comments, :dependent => :delete_all

  validates  :name,        presence: true, length: { minimum: 5, maximum: 128 }
  validates  :address,     presence: true, length: { maximum: 128}
  validates  :location,    presence: true, length: { maximum: 128}
  validates  :poop_rating, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
  validates  :atmosphere,  presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
end
