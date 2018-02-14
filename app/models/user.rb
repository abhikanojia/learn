class User < ApplicationRecord
  has_many :posts#, inverse_of: :user
  has_many :addresses

  validates :name, presence: true
  # validates_associated :posts
  # validates :name, name: true #custom validator

  validates :password, confirmation: true
  # validates :password_confirmation, presence: true # confirmation only run if _confirmation field not nil

  # validates :terms, acceptance: true, presence: true
  # validates_acceptance_of :terms, message: 'changed message for acceptance.'

  # validates :name, exclusion: { in: %w(admin superuser) }

  # validates_length_of :name, is: 2
  # validates_length_of :name, is: 2, allow_nil: true
  # validates_length_of :name, in: 1..10, allow_blank: false

  # validates_length_of :name, minimum: 3, is: 2 # runs both

  # validates_length_of :name, is: 2, too_short: "is too short", wrong_length: "is of wrong length."
  # if wrong length and too_short/too_long is given wrong_length shows only.

  # validates :name, numericality: true
  # validates :name, numericality: { only_integer: true }

  # validates :name, uniqueness: { scope: [:id, :created_at], case_sensitive: false, message: "already exists" } # default is case_sensitive true

  # validates_with GoodnessValidator, minimum: 1, maximum: 3

  # validates :name, goodness: true

  # validates :name, goodness: true, on: :create
  # validates :name, goodness: true, on: :save
  validates :name, goodness: true, on: :custom_context
  validates :name, uniqueness: true, on: :custom_context

  # validates :name, presence: { strict: true } # raises ActiveModel::StrictValidationFailed exception

  # with_options if: :test_name do |record|
  #   debugger
  # end

  before_validation :clear_errors # wont work

  private
    def custom_context
      debugger
    end

    def test_name
      debugger
    end

    def clear_errors
      errors.add(:name, 'test')
    end
end
