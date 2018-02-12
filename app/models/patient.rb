class Patient < ApplicationRecord
  # default_scope -> { order(:created_at) }

  has_many :appointments, dependent: :destroy
  # has_many :physicians, through: :appointments

  # has_many :doctors, through: :appointments, source: :physician

  # has_many :appointments, -> { order(created_at: :desc) }
  has_many :physicians, -> { order(created_at: :desc) }, through: :appointments # raises error
end
