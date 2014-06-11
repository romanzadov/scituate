class AddFw1ToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :fw1, :boolean
  end

  def self.down
    remove_column :guests, :fw1
  end
end
