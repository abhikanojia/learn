class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :full_name
      t.string :city
      t.string :street
      t.integer :postal_code
      t.belongs_to :user
      t.string :country
      t.string :type

      t.timestamps
    end
  end
end
