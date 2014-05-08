class CalculationsController < ApplicationController
  def home
  end

  def square
    @the_number = params[:number].to_f
    @answer = @the_number ** 2
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def pmt
    rate = params[:interest_rate].to_f
    nper = params[:number_of_payments].to_f
    pv = params[:present_value].to_f

    numerator = (pv*rate*(1+rate)**nper)
    denominator =  (((1+rate)**nper)-1.0)
    @payment = numerator.to_f/denominator.to_f

  end
end
