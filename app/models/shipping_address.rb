class ShippingAddress < Address
  validates_inclusion_of :country, in: %w(USA Canada)
end
