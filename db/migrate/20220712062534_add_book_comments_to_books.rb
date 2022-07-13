class AddBookCommentsToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :book_comments, :text
  end
end
