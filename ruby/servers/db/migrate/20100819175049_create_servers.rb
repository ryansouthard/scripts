class CreateServers < ActiveRecord::Migration
  def self.up
    create_table :servers do |t|
      t.string :server_name
      t.integer :ip_address
      t.string :hardware
      t.string :hardware_type
      t.string :cpu_type
      t.decimal :cpu_speed
      t.decimal :ram
      t.string :rack_location
      t.string :server_function

      t.timestamps
    end
  end

  def self.down
    drop_table :servers
  end
end
