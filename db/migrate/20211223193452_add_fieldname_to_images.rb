class AddFieldnameToImages < ActiveRecord::Migration[6.1]
  def change
    add_column :images, :category_id, :integer
  end
end
