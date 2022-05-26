class Sweet < ApplicationRecord
    has_many :vendors, through: :vender_sweets

end
