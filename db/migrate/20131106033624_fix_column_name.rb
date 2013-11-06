class FixColumnName < ActiveRecord::Migration
  def up
    
    rename_column :tickets, :type, :category
    
  end

  def down
  end
end
