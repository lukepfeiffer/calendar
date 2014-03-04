module ApplicationHelper
  def active_day?(day)
    return 'active' if day == Date.today
  end

  def rated(rate)
    return 'good' if rate.between?(7, 10)
    return 'okay' if rate.between?(4, 6)
    return 'bad' if rate.between?(1, 3)
  end

end
