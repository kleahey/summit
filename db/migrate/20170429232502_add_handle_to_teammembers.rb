class AddHandleToTeammembers < ActiveRecord::Migration[5.0]
  def change
    add_column :teammembers, :handle, :string
  end
end
