class User < ApplicationRecord
    has_secure_password
    has_many :bookings

    def admin?
        self.admin == true
    end
end
