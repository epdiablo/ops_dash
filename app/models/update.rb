class Update < ActiveRecord::Base
  belongs_to :ticket
  attr_accessible :body, :category, :ticket_id
end
