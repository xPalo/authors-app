class AddNotesToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :notes, :string
  end
end
