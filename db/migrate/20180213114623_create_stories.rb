class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.references :user
      t.timestamps
    end
  end
end
