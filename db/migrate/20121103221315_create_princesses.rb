class CreatePrincesses < ActiveRecord::Migration
  def change
    create_table :princesses do |t|
      t.string :name
      t.integer :wealth

      t.timestamps
    end
  end
end
