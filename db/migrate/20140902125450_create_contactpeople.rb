class CreateContactpeople < ActiveRecord::Migration
  def change
    create_table :contactpeople do |t|
      t.string :name
      t.string :tel
      t.string :fax
      t.string :mail
      t.integer :customer_id
      t.integer :order_id

      t.timestamps
    end
  end
end
