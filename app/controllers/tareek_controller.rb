class TareekController < ApplicationController

  def calc
    method = params[:commit].split(' ').join('_')
    self.send(method.downcase.to_sym)
    render json:  { date: @result }
  end

  def calc_day
    @result = Tareek::Dates.date_of_next(params[:day])
    render json:  { date: @result }
  end

  def humanized_date
    method = params[:commit].gsub(/[^0-9A-Za-z]/, ' ').split(' ').join('_')
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

  def mm_dd
    @result = Tareek::Dates.humanize_without_day(params[:commit])
  end

  def dd_mm_yy
    @result = Tareek::Dates.humanize_with_day(params[:commit])
  end

  def hh_ss
    @result = Tareek::Dates.time_at_day(params[:commit])
  end

  def mm_dd_yyyy_hh_mm_ss
    @result = Tareek::Dates.omniture_format_with_time(params[:commit])
  end

end
