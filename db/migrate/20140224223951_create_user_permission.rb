class CreateUserPermission < ActiveRecord::Migration
  def change
    create_table :user_permissions do |t|
      t.references :user
      t.references :playlist
    end
  end
end
