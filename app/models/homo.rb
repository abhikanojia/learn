class Homo < ApplicationRecord
  self.table_name = "users"
  has_many :posts
  has_many :addresses
  has_many :chitti, class_name: 'Bakaiti', foreign_key: 'insaan_id'
end
