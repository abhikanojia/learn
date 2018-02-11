class Patient < ApplicationRecord
  # default_scope -> { order(:created_at) }

  has_many :appointments
  has_many :physicians, through: :appointments

  # has_many :appointments, -> { order(created_at: :desc) }
  # has_many :physicians, through: :appointments, -> { order(created_at: :desc) } # raises error
end
