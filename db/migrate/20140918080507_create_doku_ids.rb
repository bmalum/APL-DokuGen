class CreateDokuIds < ActiveRecord::Migration
  def change
    create_table :doku_ids do |t|
      t.integer :w_number_id
      t.integer :dokument_id

      t.timestamps
    end
  end
end
