class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.string :region
      t.string :constituency_name
      t.integer :cpp
      t.integer :ndp
      t.integer :ndc
      t.integer :ppp
      t.integer :npp
      t.integer :pnc
      t.integer :ind
      t.integer :total_valid_votes
      t.integer :rejected_votes
      t.integer :total_votes_cast

      t.timestamps
    end
  end
end
