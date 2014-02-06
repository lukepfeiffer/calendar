class CreateDay < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :rate
      t.string :title
      t.text :description
      t.date  :date

      t.timestamps
    end
  end
end
