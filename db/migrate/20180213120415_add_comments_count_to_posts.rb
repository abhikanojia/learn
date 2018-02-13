class AddCommentsCountToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :comments_count, :integer
    add_column :stories, :cm_counts, :integer
  end
end
