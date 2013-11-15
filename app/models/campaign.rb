class Campaign < ActiveRecord::Base
  attr_accessible :advertiser, :agency, :assets, :enddate, :io, :keydates, :mobile, :name, :ops_notes, :paused, :revenue, :sales_notes, :startdate, :tablet, :targeting, :team_sold, :thirdparty, :video, :web
end
