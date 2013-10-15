class Ticket < ActiveRecord::Base
  attr_accessible :description, :email, :issue
end
