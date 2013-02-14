class User < ActiveRecord::Base
  attr_accessible :email, :password, :username, :profile_bg, :profile_fg, :profile_image
  
end
