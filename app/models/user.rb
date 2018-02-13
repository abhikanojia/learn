class User < ApplicationRecord
  has_many :posts
  has_many :addresses

  validates :name, presence: true
  # validates :name, name: true #custom validator

  # validates :password, confirmation: true
  # validates :terms, acceptance: true, presence: true

  # validates :name, exclusion: { in: %w(admin superuser) }
end
