class Checklist < ActiveRecord::Base
  attr_accessible :comments, :title, :photo
  has_attached_file :photo
  
  
end
