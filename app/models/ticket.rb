class Ticket < ActiveRecord::Base
  
  belongs_to :user
  
  attr_accessible :description, :email, :issue
end
