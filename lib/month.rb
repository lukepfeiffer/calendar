class Month

  attr_reader :beginning

  def initialize(date)
    @beginning = date.beginning_of_month
  end

  def weeks
  end
end

class Week
  def days
  end
end

class Day
end
require 'pry'; binding.pry
