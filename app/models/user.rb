class User < ApplicationRecord
  has_many :posts
  has_many :addresses


  # has_many :sports
  # has_many :football
  # has_many :baseball
  # has_many :basketball
end
