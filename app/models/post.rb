class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  validates :title, :subtitle, :body, presence: true, length: {minimum: 5}
end
