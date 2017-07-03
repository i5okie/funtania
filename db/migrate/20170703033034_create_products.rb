class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :shortdescription
      t.string :longdescription
      t.string :manufacturer
      t.string :partnumber
      t.integer :sku

      t.timestamps
    end
  end
end
