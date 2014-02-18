class CalendarDaysController < ApplicationController
  def edit
    @calendar_day = find_calendar_day
  end

  def destroy
    CalendarDay.find(params[:id]).destroy
    redirect_to calendar_path
  end

  def update
   @calendar_day =  CalendarDay.new(calendar_day_params)
   if @calendar_day.save
     redirect_to calendar_path
   else
     redirect_to calendar_day_path
   end
  end

  def create
   @calendar_day =  CalendarDay.new(calendar_day_params)
   if @calendar_day.save
     redirect_to calendar_path
   else
     redirect_to calendar_day_path
   end
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
