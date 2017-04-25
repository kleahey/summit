class CreateTeammembers < ActiveRecord::Migration[5.0]
  def change
    create_table :teammembers do |t|
      t.string :name

      t.timestamps
    end
  end
end
