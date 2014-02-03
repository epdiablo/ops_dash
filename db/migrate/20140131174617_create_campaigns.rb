class CreateCampaigns < ActiveRecord::Migration
  def change
    
    create_table :campaigns do |t|
      t.string :name
      t.string :advertiser
      t.string :agency
      t.string :teamsold
      t.string :revenue
      t.string :startdate
      t.string :enddate
      t.string :thirdparty
      t.text :thirdpartylogin
      t.text :theoremtracking
      t.text :geo
      t.boolean :web
      t.boolean :mobile
      t.boolean :tablet
      t.boolean :video
      t.boolean :io
      t.boolean :assets
      t.text :notes

      t.timestamps
    end
  end
end
