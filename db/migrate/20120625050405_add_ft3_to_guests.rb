class AddFt3ToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :ft3, :boolean
  end

  def self.down
    remove_column :guests, :ft3
  end
end
