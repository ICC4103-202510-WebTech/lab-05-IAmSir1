class AddTableUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end

