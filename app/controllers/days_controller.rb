class DaysController < ApplicationController
  def new
  end

  def create
    @day = Day.new(day_params)
    if @day.valid?
      @day.save
      redirect_to calendar_path
    else
      redirect_to day_path
    end
  end

  def day_params
    params.require(:day).permit(
      :rate,
      :title,
      :description
    )
  end
end
