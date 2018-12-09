class Comment < ApplicationRecord
  belongs_to :toilet

  validates :username, presence: true, length: {maximum: 36}
  validates :body,     presence: true, length: {maximum: 128}
end
