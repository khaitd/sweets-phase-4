class VendorWithVenderSweetSerializer < ActiveModel::Serializer
  attributes :id

  has_many :vendor_sweets
  
end
