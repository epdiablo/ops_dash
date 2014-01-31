class AddDetailsToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :status, :text
    add_column :campaigns, :trafficker, :text
  end
end
