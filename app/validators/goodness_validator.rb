class GoodnessValidator < ActiveModel::Validator
  def validate_each(record, attribute, value)
    puts "In validation..."
  end

  def validate(record)
    debugger
  end
end
