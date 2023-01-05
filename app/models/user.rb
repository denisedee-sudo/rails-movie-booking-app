class User < ApplicationRecord
    has_secure_password


    def admin?
        self.admin == true
    end
end
