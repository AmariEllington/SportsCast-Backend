class User < ApplicationRecord
    has_secure_password
    validates :password, length: { in: 6..20 }
    validates :username, uniqueness: true

end
