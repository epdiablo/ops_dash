class ChangeDescriptionInTickets < ActiveRecord::Migration
  def up

  	change_column :tickets, :description, :text
  	change_column :tickets, :issue, :text
  	change_column :updates, :body, :text

  end

  def down

  	change_column :tickets, :description, :string
  	change_column :tickets, :issue, :string
  	change_column :updates, :body, :string

  end
end
