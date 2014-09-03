class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :street
      t.integer :zip_code
      t.string :state

      t.timestamps
    end
  end
end
