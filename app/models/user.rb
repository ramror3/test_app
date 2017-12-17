class User < ApplicationRecord
	has_many :comments
	validates :username, presence: true, uniqueness: { case_sesitive: false	}, 
			   length: { minimum: 3, maximum: 25 }
    validates :email, presence: true, length: { maximum: 25}
    		   uniqueness: { case_sesitive: false }
    		   format: { with: VALID_EMAIL_REGEX }
end
