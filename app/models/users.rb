class Users < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :username, :password,:email,:gender,:date_of_birth,:role ,:status
  def self.authenticate?(email, password)
    u = Users.find_by_email email
    u.password == password
  end
  has_many :comments
  has_many :albums

end
