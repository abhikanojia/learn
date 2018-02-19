class Post < ApplicationRecord
  scope :first_val, -> { where(id: 1) }
  # belongs_to :writer, dependent: :destroy, class_name: "User", foreign_key: "user_id"
  belongs_to :user
end
