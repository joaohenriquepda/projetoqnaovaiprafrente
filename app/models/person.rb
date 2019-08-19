class Person < ApplicationRecord

    has_secure_password 
    has_secure_password :transaction_password, validations: false
    has_secure_password :recovery_password, validations: false


end
