class Account < ApplicationRecord
    has_many :addresses, dependent: :destroy, class_name: 'Address'
    has_one :billing_address, -> { where(address_type: :billing) }, class_name: 'Address'  #  scope :billing
    has_one :shipping_address, -> { where(address_type: :shipping) }, class_name: 'Address' # scope :shipping
end
