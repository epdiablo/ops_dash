class CreateUpdates < ActiveRecord::Migration
  def change
    
    create_table :updates do |t|
      t.string :body
      t.string :category
      t.integer :ticket_id

      t.timestamps
    end
  end
end
