class MakeIsbnNotUnique < ActiveRecord::Migration[7.0]
  def change
    remove_index :books, :isbn
  end
end
