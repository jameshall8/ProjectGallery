class AddUserIdToImages < ActiveRecord::Migration[6.1]
  def change
    add_column :images, :user_id, :string
  end
end
