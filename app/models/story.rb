class Story < ApplicationRecord
  has_many :comments, as: :xyz, foreign_key: 'commentable_id', foreign_type: 'commentable_type'
end
