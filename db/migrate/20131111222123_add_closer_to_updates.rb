class AddCloserToUpdates < ActiveRecord::Migration
  def change
  	add_column(:updates, :is_closer, :boolean) unless Updates.column_names.include?('is_closer')
  end
end
