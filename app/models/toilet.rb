class Toilet < ApplicationRecord
  has_many :comments, :dependent => :delete_all

  validates  :name,        presence: true, length: {minimum: 5}
  validates  :address,     presence: true
  validates  :poop_rating, presence: true, length:{maximum: 10}
  validates  :atmosphere,  presence: true, length:{maximum: 10}
end
