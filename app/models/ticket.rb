class Ticket < ActiveRecord::Base
  attr_accessible :description, :issue, :priority, :type, :user_id
end
