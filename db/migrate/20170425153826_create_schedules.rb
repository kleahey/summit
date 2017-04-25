class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.timestamp :start_time, null: false
      t.timestamp :end_time, null: false
      t.integer :teammember_id, null: false
      t.integer :location_id, null: false
      t.integer :role_id
      t.integer :session_id, null: false

      t.timestamps
    end
  end
end
