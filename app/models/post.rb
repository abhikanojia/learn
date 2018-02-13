class Post < ApplicationRecord
  scope :first_val, -> { where(id: 1) }
  belongs_to :user, dependent: :destroy

  has_many :comments, as: :commentable
  # has_many :opinions, as: :commentable
end
