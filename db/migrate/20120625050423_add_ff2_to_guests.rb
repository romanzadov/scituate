class AddFf2ToGuests < ActiveRecord::Migration
  def self.up
    add_column :guests, :ff2, :boolean
  end

  def self.down
    remove_column :guests, :ff2
  end
end
