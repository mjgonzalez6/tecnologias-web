class AddAdminToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :admin, :boolean, default: false
  end
end
