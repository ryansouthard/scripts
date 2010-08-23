# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100819175732) do

  create_table "srvrs", :force => true do |t|
    t.string   "server_name"
    t.integer  "ip_address"
    t.string   "hardware"
    t.string   "hardware_type"
    t.string   "cpu_type"
    t.decimal  "cpu_speed"
    t.decimal  "ram"
    t.string   "rack_location"
    t.string   "server_function"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
