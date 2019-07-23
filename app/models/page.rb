class Page < ApplicationRecord
    has_many :users
    has_many :users, through: :user_pages


end
