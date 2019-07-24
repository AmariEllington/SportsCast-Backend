class User < ApplicationRecord
    has_secure_password
   belongs_to :page, required: false

end
