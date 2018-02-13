class CreateKahani < ActiveRecord::Migration[5.1]
  def change
    create_table :kahani, id: false do |t|
      t.references :insaan, index: true
      t.primary_key :uid
    end
  end
end
