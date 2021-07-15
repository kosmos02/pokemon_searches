class User < ApplicationRecord
    has_secure_password
    validates :username, :password, presence: true
    paginates_per 5
end
