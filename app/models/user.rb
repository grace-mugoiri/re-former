class User < ApplicationRecord
    validates :username, presence: true, length: { maximum: 50}
    valid_email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255}
    validates :password, presence: true, length: { maximum: 16, minimum:8}
end
