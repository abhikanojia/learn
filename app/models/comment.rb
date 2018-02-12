class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :abc, polymorphic: true, foreign_key: :commentable
end
