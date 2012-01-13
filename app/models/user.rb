class User < ActiveRecord::Base
  authenticates_with_sorcery!

  attr_accessible :username, :email, :password

  validates :username, :presence => true, :uniqueness => true
  validates :email, :presence => true
  validates :password, :presence => true, :length => {:minimum => 4}


end
