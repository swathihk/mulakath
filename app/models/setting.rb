class Setting < ActiveRecord::Base
  attr_accessible :user_id, :post_id,:security_level,:member_id
end
