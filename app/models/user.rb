class User < ApplicationRecord
  has_many :posts
  # has_one :post
end
