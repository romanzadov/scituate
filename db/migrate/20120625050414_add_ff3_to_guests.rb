class AddFf3ToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :ff3, :boolean
  end

  def self.down
    remove_column :guests, :ff3
  end
end
