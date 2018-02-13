class ShippingAddress < Address
  validates_inclusion_of :country, in: %w(USA Canada)
  validates_length_of :city, minimum: 3
end
