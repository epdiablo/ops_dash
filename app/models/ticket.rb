class Ticket < ActiveRecord::Base
  belongs_to :user
  has_many :updates
  attr_accessible :description, :issue, :priority, :type, :user_id
end
