class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.boolean :admin
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :score
    end
  end
end
