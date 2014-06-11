class RemoveS5FromGuests < ActiveRecord::Migration
  def self.up
    remove_column :guests, :s5
  end

  def self.down
    add_column :guests, :s5, :boolean
  end
end
