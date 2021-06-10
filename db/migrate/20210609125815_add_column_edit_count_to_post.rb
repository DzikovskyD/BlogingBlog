class AddColumnEditCountToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :edit_count, :int
  end
end
