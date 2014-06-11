class AddT3ToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :t3, :boolean
  end

  def self.down
    remove_column :guests, :t3
  end
end
