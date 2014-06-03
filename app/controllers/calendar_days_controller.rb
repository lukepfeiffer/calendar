class CalendarDaysController < ApplicationController
  def new
    @calendar_day = find_calendar_day
  end

  def create
   @calendar_day =  current_user.calendar_days.build(calendar_day_params)
   if @calendar_day.save
     redirect_to calendar_path
   else
     render 'calendar_days/new'
   end
  end

  def edit
    @calendar_day = find_calendar_day
  end

  def update
    @calendar_day = CalendarDay.find(params[:id])
    @calendar_day.update_attributes(calendar_day_params)
    redirect_to calendar_path
  end

  def show
    @calendar_day = CalendarDay.find(params[:id])
  end

  def destroy
    CalendarDay.find(params[:id]).destroy
    redirect_to calendar_path
  end
  def find_calendar_day
   CalendarDay.find_by(:event_date => params[:id]) || CalendarDay.new
  end

  def calendar_day_params
    params.require(:calendar_day).permit(
      :rate,
      :title,
      :description,
      :event_date
    )
  end
end
