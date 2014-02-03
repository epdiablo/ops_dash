class AddMoreToCampaign < ActiveRecord::Migration
  def change
    add_column :campaigns, :manager, :string
    add_column :campaigns, :keydates, :text
  end
end
