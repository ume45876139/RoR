class User < ApplicationRecord
    validates :username, 
        presence: true, 
        uniqueness: { case_sensitive: false }, 
        length: { minimum:3, maximum:25 }
    validates :email, 
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
        presence: true,
        uniqueness: { case_sensitive: true }, 
        length: { maximum:105 },
        format: { with:VALID_EMAIL_REGEX }
    has_many :articles
end
