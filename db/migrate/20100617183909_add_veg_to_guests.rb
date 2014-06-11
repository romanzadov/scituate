class AddVegToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :veg, :boolean
  end

  def self.down
    remove_column :guests, :veg
  end
end
