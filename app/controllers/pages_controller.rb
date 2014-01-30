class PagesController < ApplicationController
  def home
    @user = User.new
  end

  def calendar
    @active_month = active_day.month
    @active_day = active_day
    @month =  Month.new(@active_day)
  end

  def active_day
    date_from_params
  end

  def date_from_params
    Date.new(year.to_i, month.to_i)
  end

  def year
    params[:year] || Date.today.year
  end

  def month
    params[:month] || Date.today.month
  end

end
