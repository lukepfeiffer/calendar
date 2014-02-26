class CalendarDay < ActiveRecord::Base
  validates_presence_of :rate, :title, :description
  belongs_to :user
end
