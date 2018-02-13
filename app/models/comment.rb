class Comment < ApplicationRecord
  # belongs_to :insaan, class_name: 'User', foreign_key: 'noteable_id'
  belongs_to :commentable, polymorphic: true
end
