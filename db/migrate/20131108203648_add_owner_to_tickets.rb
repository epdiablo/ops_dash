class AddOwnerToTickets < ActiveRecord::Migration
  def change
    add_column(:tickets, :owner, :string) unless Tickets.column_names.include('owner')
  end
end
