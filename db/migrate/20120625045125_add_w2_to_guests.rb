class AddW2ToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :w2, :boolean
  end

  def self.down
    remove_column :guests, :w2
  end
end
