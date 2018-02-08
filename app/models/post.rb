class Post < ApplicationRecord
  scope :first_val, -> { where(id: 1) }
  belongs_to :user, dependent: :destroy
end
