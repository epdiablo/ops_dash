class Ticket < ActiveRecord::Base
  belongs_to :user
  has_many :updates
  has_many :watchers
  attr_accessible :description, :issue, :priority, :category, :user_id, :status, :owner
  
  PRIORITY_LEVELS = [ 1, 2, 3]
  
end
