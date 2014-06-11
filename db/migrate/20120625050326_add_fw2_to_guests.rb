class AddFw2ToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :fw2, :boolean
  end

  def self.down
    remove_column :guests, :fw2
  end
end
