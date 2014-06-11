class RemoveFs5FromGuests < ActiveRecord::Migration
  def self.up
    remove_column :guests, :fs5
  end

  def self.down
    add_column :guests, :fs5, :boolean
  end
end
