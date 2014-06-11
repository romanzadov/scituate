class AddFt1ToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :ft1, :boolean
  end

  def self.down
    remove_column :guests, :ft1
  end
end
