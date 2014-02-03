class AddDbToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :db, :string
  end
end
