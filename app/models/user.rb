class User < ApplicationRecord
  has_and_belongs_to_many :flights
  has_secure_password
end
