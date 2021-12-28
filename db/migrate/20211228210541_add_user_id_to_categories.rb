class AddUserIdToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :fieldname, :string
  end
end
