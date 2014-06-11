class RemoveS6FromGuests < ActiveRecord::Migration
  def self.up
    remove_column :guests, :s6
  end

  def self.down
    add_column :guests, :s6, :boolean
  end
end
