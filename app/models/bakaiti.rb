class Bakaiti < ApplicationRecord
  self.table_name = "kahani"
  belongs_to :homosapien, class_name: "Homo", foreign_key: 'insaan_id'
end
