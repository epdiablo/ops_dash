class AddCloserToUpdates < ActiveRecord::Migration
  def change
  	add_column :updates, :is_closer, :boolean
  end
end
