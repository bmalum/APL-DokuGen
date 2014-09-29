class CreateEndDocumentations < ActiveRecord::Migration
  def change
    create_table :end_documentations do |t|
      t.integer :copies
      t.integer :cd
      t.integer :created_by
      t.datetime :printed_at
      t.string :language
      t.string :params

      t.timestamps
    end
  end
end
