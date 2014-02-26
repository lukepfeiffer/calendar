class AddUserIdToCalendarDays < ActiveRecord::Migration
  def change
    add_column :calendar_days, :user_id, :integer
  end
end
