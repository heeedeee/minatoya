class User < ApplicationRecord
    has_secure_password
    
    validates :first_name, presence: true
    validates :last_name, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
    validates :tel, presence: true, numericality: { only_integer: true }
    validates :password, confirmation: true
    # validates :password_confirmation, presence: true
end
