class Month

  attr_reader :beginning_date, :end_date

  def initialize(date)
    @beginning_date = date.beginning_of_month.beginning_of_week.to_date
    @end_date = date.end_of_month.end_of_week.to_date
  end

  def weeks
    [].tap do |weeks|
      weeks_count.times do |week_number|
        weeks << Week.new(beginning_date + ((week_number + 1) * 7))
      end
    end
  end

  def weeks_count
    (end_date - beginning_date).to_i / 7
  end
end

class Week
  attr_reader :beginning_date, :end_date

  def initialize(date)
    @beginning_date = date.beginning_of_week
    @end_date = date.end_of_week
  end

  def days
    (beginning_date..end_date).to_a
  end
end

class Day
  attr_reader :date
  def initialize(date)
    @date = date
  end
end
