class EnergyController < ApplicationController
  def index
    @day_productions= DayProduction.all
  end

  def def new
  end
  

  def import  
    HourlyProduction.import(params[:file])

    @days = HourlyProduction.select(:day).distinct
    @days.each do |day|
      total = 0
      @hourly_prods = HourlyProduction.where(day: day.day)
      @hourly_prods.each do |h_p|
        total += h_p.energy
      end
      DayProduction.create!(day: day.day, energy_total: total)
    end

    redirect_to energy_index_path, notice: "Data succesfully imported" 
  end

  def show
    @hourly_prods = HourlyProduction.where(day: params["format"])
    @day_production = DayProduction.find_by(day: params["format"]).energy_total
    #raise
    #@energy_total = DayProduction.select
  end
end
