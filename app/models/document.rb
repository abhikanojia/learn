class Document < ApplicationRecord
  has_many :sections
  has_many :paragraphs, through: :sections

  has_many :comments, as: :abc
end

class Section < ApplicationRecord
  belongs_to :document
  has_many :paragraphs
end

class Paragraph < ApplicationRecord
  belongs_to :section
end
