class User < ApplicationRecord
  has_many :posts
  has_many :addresses

  # validates :name, presence: true
  # validates :name, name: true #custom validator

  # validates :password, confirmation: true
  # validates :terms, acceptance: true, presence: true
  # validates_acceptance_of :terms, message: 'changed message for acceptance.'

  # validates :name, exclusion: { in: %w(admin superuser) }

  # validates_length_of :name, is: 2
  # validates_length_of :name, is: 2, allow_nil: true
  validates_length_of :name, in: 1..10, allow_blank: false
end
