class RemoveEmailFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :email, :string
    remove_column :users, :crypted_password, :string
    remove_column :users, :user_image, :string
    remove_column :users, :role, :string
  end
end
