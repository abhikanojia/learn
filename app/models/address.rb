class Address < ApplicationRecord
  # belongs_to :user

  validates_presence_of :city, :street, :postal_code
  validates_length_of :city, minimum: 2

  # Address.first => first entry
  # BillingAddress.first => first entry of billing address using In('BillingAddress')
end
