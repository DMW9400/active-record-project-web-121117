class AddAuthorToBooks < ActiveRecord::Migration[4.2]
  def change
    add_column :books, :author_id, :integer
  end
end
