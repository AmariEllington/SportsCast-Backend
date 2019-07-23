class User < ApplicationRecord
    has_secure_password
    has_many :user_pages
    has_many :pages, through: :user_pages

end
