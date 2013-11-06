class Ticket < ActiveRecord::Base
  belongs_to :user
  has_many :updates
  attr_accessible :description, :issue, :priority, :category, :user_id, :status
end
