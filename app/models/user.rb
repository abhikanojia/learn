class User < ApplicationRecord
  has_many :posts, foreign_key: 'test', primary_key: 'uid'
  has_many :addresses
end
