class Post < ApplicationRecord
  scope :first_val, -> { where(id: 1) }
  belongs_to :user, dependent: :destroy

  has_many :comments, as: :abc # nullify on post.comments.clear
  # has_many :comments, as: :commentable, dependent: :destroy # destroys on post.comments.clear
end
