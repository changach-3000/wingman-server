class User < ApplicationRecord
    has_secure_password

  validates :name, presence: true
  validates :id_number, presence: true
  validates :phone_number, presence: true
  validates :password, presence: true, length: { minimum: 6 }

end
