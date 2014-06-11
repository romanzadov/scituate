class AddF2ToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :f2, :boolean
  end

  def self.down
    remove_column :guests, :f2
  end
end
