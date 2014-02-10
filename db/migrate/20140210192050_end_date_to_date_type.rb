class EndDateToDateType < ActiveRecord::Migration
   def change 
    change_column :campaigns, :enddate, :date
    
  end
  
end
