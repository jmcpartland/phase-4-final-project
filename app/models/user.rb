class User < ApplicationRecord
    has_secure_password

    validates :username, :password, :password_confirmation, presence: true
    
    has_many :orders
    has_many :supplements, through: :orders
end
