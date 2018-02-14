class GoodnessValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    puts "In validation..."
  end
end
