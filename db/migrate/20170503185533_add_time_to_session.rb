class AddTimeToSession < ActiveRecord::Migration[5.0]
  def change
    add_column :sessions, :start_time, :datetime
    add_column :sessions, :end_time, :datetime
  end
end
