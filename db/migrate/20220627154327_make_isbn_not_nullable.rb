class MakeIsbnNotNullable < ActiveRecord::Migration[7.0]
  def change
    change_column :books, :isbn, :string, :null => false
  end
end
