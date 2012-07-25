class Addcolumnstousers < ActiveRecord::Migration
  def up
    add_column :users, :status, :boolean
  end

  def down
  end
end
