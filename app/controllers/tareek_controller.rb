class TareekController < ApplicationController

  def calc
    method = params[:commit].split(' ').join('_')
    self.send(method.downcase.to_sym)
    render json:  { date: @result }
  end

  def next_month_middle_date
    @result = Tareek::Dates.get_middle_of_next_month_date(params[:year],params[:month])
  end

  def past_month_middle_date
    @result = Tareek::Dates.get_middle_of_past_month_date(params[:year],params[:month])
  end

  def day_on_next_month_middle_date
    @result = Tareek::Dates.day_middle_of_next_month_date(params[:year],params[:month])
  end

  def day_on_past_month_middle_date
    @result = Tareek::Dates.day_middle_of_past_month_date(params[:year],params[:month])
  end

end
