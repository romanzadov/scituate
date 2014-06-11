class AddFt2ToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :ft2, :boolean
  end

  def self.down
    remove_column :guests, :ft2
  end
end
