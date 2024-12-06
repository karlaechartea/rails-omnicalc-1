class CalculationsController < ApplicationController
  # Form to calculate the square
  def new_square
  end

  def result_square
    @number = params[:number].to_f
    @result = @number**2
  end

  # Form to calculate the square root
  def new_square_root
  end

  def result_square_root
    @number = params[:number].to_f
    @result = Math.sqrt(@number)
  end

  # Form to generate a random number
  def new_random
  end

  def result_random
    @min = params[:min].to_f
    @max = params[:max].to_f
    @result = rand(@min..@max)
  end

  # Form to calculate the monthly payment
  def new_payment
  end

  def result_payment
    apr = params[:apr].to_f
    @r = (apr / 100 / 12).round(4) # Monthly interest rate
    years = params[:years].to_i
    months = years * 12 # Convert years to months
    principal = params[:principal].to_f
  
    numerator = @r * principal
    denominator = 1 - (1 + @r)**-months
    @result = (numerator / denominator).round(2) # Monthly payment
  end
end
