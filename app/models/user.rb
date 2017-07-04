class User < ApplicationRecord
    # has_and_belongs_to_many :flights , :through flights_users
    has_secure_password
end
