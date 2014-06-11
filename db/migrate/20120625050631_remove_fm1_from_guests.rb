class RemoveFm1FromGuests < ActiveRecord::Migration
  def self.up
    remove_column :guests, :fm1
  end

  def self.down
    add_column :guests, :fm1, :boolean
  end
end
