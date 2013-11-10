class ChangeOwnerInTickets < ActiveRecord::Migration
  def change
    change_column :tickets, :owner, :integer
  end
end
