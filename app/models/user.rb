class User < ApplicationRecord
  has_many :posts
  has_many :addresses

  has_many :comments, as: :commentable
  # has_many :comments, as: :commentable, foreign_key: 'noteable_id', foreign_type: 'noteable_type'
  # has_many :remarks, as: :opinionable
end
