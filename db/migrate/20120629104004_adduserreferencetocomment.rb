class Adduserreferencetocomment < ActiveRecord::Migration
  def up
    add_column :comments, :users_id, :integer
  end

  def down
   remove_column :comments, :users_id, :integer
  end
end
