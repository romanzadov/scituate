class CreateGuests < ActiveRecord::Migration
  def self.up
    create_table :guests do |t|
      t.string :name
      t.boolean :f1
      t.boolean :s1
      t.boolean :s2
      t.boolean :s3
      t.boolean :s4
      t.boolean :s5
      t.boolean :s6
      t.boolean :m1
      t.boolean :ff1
      t.boolean :fs1
      t.boolean :fs2
      t.boolean :fs3
      t.boolean :fs4
      t.boolean :fs5
      t.boolean :fs6
      t.boolean :fm1

      t.timestamps
    end
  end

  def self.down
    drop_table :guests
  end
end
