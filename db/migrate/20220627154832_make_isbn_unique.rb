class MakeIsbnUnique < ActiveRecord::Migration[7.0]
  def change
    add_index :books, :isbn, unique: true
  end
end
