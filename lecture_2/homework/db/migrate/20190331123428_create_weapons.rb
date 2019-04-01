class CreateWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
      t.string :name, null: false
      t.integer :damage, null: false
      t.references :warrior, foreign_key: true, index: true
      t.timestamps
    end
  end
end