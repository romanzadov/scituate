class AddT1ToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :t1, :boolean
  end

  def self.down
    remove_column :guests, :t1
  end
end
