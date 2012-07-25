class Post < ActiveRecord::Base
	has_many :comments
	#validates :name , :presence => true
	#validates :title , :presence => true
	validates :description , :presence => true
  attr_accessible :name, :title,:description ,:user_id
end
