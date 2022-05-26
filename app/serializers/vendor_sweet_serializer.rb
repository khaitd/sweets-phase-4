class VendorSweetSerializer < ActiveModel::Serializer
  attributes :id

  has_one :sweet
  has_one :vendor
end
