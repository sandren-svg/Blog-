# email:string
# password_digest:string
#
# password:string virtual
# password_confirmation:string virtual
class User < ApplicationRecord
    has_secure_password 


    #email format not working
    validates :email, presence: true, format: {with: /\A\S+@.+\.\S+\z/, message: "Must be valid email format"} 
end
