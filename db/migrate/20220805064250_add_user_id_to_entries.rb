class AddUserIdToEntries < ActiveRecord::Migration[6.1]
  def change
    add_column :entries, :user_id, :integer
  end
end
