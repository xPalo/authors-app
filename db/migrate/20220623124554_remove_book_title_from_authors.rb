class RemoveBookTitleFromAuthors < ActiveRecord::Migration[7.0]
  def change
    remove_column :authors, :book_title, :string
  end
end
