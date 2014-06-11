class RemoveFs6FromGuests < ActiveRecord::Migration
  def self.up
    remove_column :guests, :fs6
  end

  def self.down
    add_column :guests, :fs6, :boolean
  end
end
