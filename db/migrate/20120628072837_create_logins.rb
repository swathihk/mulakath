class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :username
      t.string :password
      t.boolean :role
      t.string :email
      t.date :date_of_birth
      t.boolean :gender
      t.timestamps
    end
  end
end
