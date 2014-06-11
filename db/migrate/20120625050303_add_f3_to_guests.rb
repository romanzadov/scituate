class AddF3ToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :f3, :boolean
  end

  def self.down
    remove_column :guests, :f3
  end
end
