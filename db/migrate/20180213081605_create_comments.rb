class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments, id: false do |t|
      t.primary_key :c_id
      t.references :commentable, polymorphic: true
    end
  end
end
