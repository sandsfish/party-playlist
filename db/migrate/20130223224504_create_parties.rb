class CreateParties < ActiveRecord::Migration
  def self.up
    create_table :parties do |t|
      t.string :name
      t.string :host
      t.datetime :party_date
      t.timestamps
    end
  end

  def self.down
    drop_table :parties
  end
end
