class Month

  attr_reader :beginning

  def initialize(date)
    @beginning = date.beginning_of_month.beginning_of_week
  end

  def weeks
    [ Week.new(beginning) ]
  end
end

class Week
  attr_reader :beginning
  attr_reader :date

  def initialize(date)
    @date = date
    @beginnning = date.beginning_of_week
  end

  def days
    beginning..beginning.at_end_of_week.to_a.map do |day|
      Date.new(day)
    end
  end
end

class Day
  attr_reader :date
  def initialize(date)
    @date = date
  end
end
