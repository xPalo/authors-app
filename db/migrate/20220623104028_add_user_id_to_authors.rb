class AddUserIdToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :user_id, :integer
    add_index :authors, :user_id
  end
end
