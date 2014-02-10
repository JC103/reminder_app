class Post < ActiveRecord::Base
validates :phone, presence: true
end
