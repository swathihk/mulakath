class Comment < ActiveRecord::Base
  belongs_to :post
  #validates :commenter , :presence => true
  validates :message , :presence => true
  attr_accessible :commenter, :message  ,:users_id ,:post_id ,:description
  belongs_to :users
end
