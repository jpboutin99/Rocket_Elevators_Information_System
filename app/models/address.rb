class Address < ApplicationRecord
    def address_type_enum
        [['Mailing', 0],['Billing',1],['Shipping',2]]
    end
    def status_enum
        [['Active', 0],['Obselete',1]]
    end
    has_one :customer
    has_one :building
end
