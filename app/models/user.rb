class User < ApplicationRecord
  has_many :posts
  has_many :addresses
  has_many :comments
end
