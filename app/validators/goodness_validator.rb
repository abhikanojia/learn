class GoodnessValidator < ActiveModel::Validator
  def validate(record)
    record.errors.add(:name, :abx)
  end
  def validate_each(record, attribute, value)
    debugger
  end
end
