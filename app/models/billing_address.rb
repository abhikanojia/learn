class BillingAddress < Address
  validates_presence_of :country
  validates_length_of :city, minimum: 4
end
