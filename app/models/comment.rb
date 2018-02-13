class Comment < ApplicationRecord
  # belongs_to :insaan, class_name: 'User', foreign_key: 'noteable_id'
  belongs_to :rememberable, polymorphic: true, foreign_key: 'commentable_id', foreign_type: 'commentable_type', counter_cache: :cm_counts
  # comments_count
end
