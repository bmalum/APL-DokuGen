class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :apl
      t.string :ext
      t.integer :customer_id
      t.integer :contactperson_id

      t.timestamps
    end
  end
end
