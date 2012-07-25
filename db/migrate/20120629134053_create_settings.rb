class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
       t.integer :user_id
       t.integer :post_id
       t.string :security_level
       t.integer :member_id
       t.timestamps
    end
  end
end
