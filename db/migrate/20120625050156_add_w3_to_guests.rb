class AddW3ToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :w3, :boolean
  end

  def self.down
    remove_column :guests, :w3
  end
end
