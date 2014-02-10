class ChangeCampaignDateToDateType < ActiveRecord::Migration
  
  def change 
    change_column :campaigns, :startdate, :date
    
  end
  
end
