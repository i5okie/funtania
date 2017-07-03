class AddRoleToUser < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      ## User role
      t.string :role#,              null: false, default: :default
    end
  end
end
