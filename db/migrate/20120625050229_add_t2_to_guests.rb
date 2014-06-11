class AddT2ToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :t2, :boolean
  end

  def self.down
    remove_column :guests, :t2
  end
end
