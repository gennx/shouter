class Shout < ActiveRecord::Base
  belongs_to :user
  validates_length_of :content, minimum: 5, maximum: 140
  attr_accessible :content, :user
  
  
end
