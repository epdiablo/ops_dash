class AddUserIdToUpdates < ActiveRecord::Migration
  def change
    add_column(:updates, :user_id, :integer) unless Updates.column_names.include?('user_id')
  end
end
