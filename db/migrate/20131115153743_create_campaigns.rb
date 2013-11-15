class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.string :advertiser
      t.string :agency
      t.string :team_sold
      t.string :revenue
      t.string :startdate
      t.string :enddate
      t.text :keydates
      t.string :thirdparty
      t.string :targeting
      t.boolean :web
      t.boolean :mobile
      t.boolean :tablet
      t.boolean :video
      t.boolean :io
      t.boolean :assets
      t.text :sales_notes
      t.text :ops_notes
      t.boolean :paused

      t.timestamps
    end
  end
end
