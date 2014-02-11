class CreateCalendarDays < ActiveRecord::Migration
  def change
    create_table :calendar_days do |t|
      t.integer :rate
      t.string :title
      t.string :description
      t.date :event_date
    end
  end
end
