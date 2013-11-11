class ChangeOwnerInTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :owner, :integer
  end
end
