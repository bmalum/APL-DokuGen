class CreateWNumbers < ActiveRecord::Migration
  def change
    create_table :w_numbers do |t|
      t.string :number
      t.string :darwing_number
      t.string :year
      t.string :standard
      t.string :tag_number
      t.string :name
      t.integer :order_id

      t.timestamps
    end
  end
end
