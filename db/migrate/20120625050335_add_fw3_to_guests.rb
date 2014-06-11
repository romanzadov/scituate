class AddFw3ToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :fw3, :boolean
  end

  def self.down
    remove_column :guests, :fw3
  end
end
