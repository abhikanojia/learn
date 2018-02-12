class Documents < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.string :name
    end
    create_table :sections do |t|
      t.string :name
      t.belongs_to :document
    end
    create_table :paragraphs do |t|
      t.string :name
      t.belongs_to :section
    end
  end
end
