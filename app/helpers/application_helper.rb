module ApplicationHelper
  def active_day?(day)
    return 'active' if day == Date.today
  end
end
