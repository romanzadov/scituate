class RemoveM1FromGuests < ActiveRecord::Migration
  def self.up
    remove_column :guests, :m1
  end

  def self.down
    add_column :guests, :m1, :boolean
  end
end
