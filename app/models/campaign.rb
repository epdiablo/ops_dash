class Campaign < ActiveRecord::Base
  attr_accessible :advertiser, :agency, :assets, :enddate, :geo, :io, :mobile, :name, :notes, :revenue, :startdate, :tablet, :teamsold, :theoremtracking, :thirdparty, :thirdpartylogin, :video, :web, :trafficker, :status, :manager, :keydates, :db
end
