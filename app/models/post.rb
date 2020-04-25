class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  belongs_to :category
  validates :category, presence: true;
  validates :title, :subtitle, :body, presence: true, length: { minimum: 5 }
  scope :ordered, -> { order(created_at: :desc) }
end
