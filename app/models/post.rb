class Post < ActiveRecord::Base
before_save { self.email = email.downcase }
validates :phone, presence: true
#uncomment after date is working. checkout controller also
#validates :date, presence: true
validates :time, presence: true
validates :cartype, presence: true
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
#uniqueness validation not necessary; allows for multiple re-submissions
end
