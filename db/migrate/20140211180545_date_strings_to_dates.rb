class DateStringsToDates < ActiveRecord::Migration
  def self.up
  rename_column :campaigns, :startdate, :startdate_entered_string
  add_column :campaigns, :startdate, :date

  Campaign.reset_column_information
  Campaign.find_each { |c| c.update_attribute(:startdate, c.startdate_entered_string) } 
  remove_column :campaigns, :startdate_entered_string
  
   rename_column :campaigns, :enddate, :enddate_entered_string
  add_column :campaigns, :enddate, :date

  Campaign.reset_column_information
  Campaign.find_each { |c| c.update_attribute(:enddate, c.enddate_entered_string) } 
  remove_column :campaigns, :enddate_entered_string
  
end
  def down
  end
end
