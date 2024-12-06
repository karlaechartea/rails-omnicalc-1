class ApplicationController < ActionController::Base
  skip_forgery_protection

  def add
    # Render the form for addition
  end

  def wizard_add
    # Perform addition
    @first_num = params[:first_num].to_f
    @second_num = params[:second_num].to_f
    @result = @first_num + @second_num
  end

  def subtract
    # Render the form for subtraction
  end

  def wizard_subtract
    # Perform subtraction
    @first_num = params[:first_num].to_f
    @second_num = params[:second_num].to_f
    @result = @first_num - @second_num
  end

  def multiply
    # Render the form for multiplication
  end

  def wizard_multiply
    # Perform multiplication
    @first_num = params[:first_num].to_f
    @second_num = params[:second_num].to_f
    @result = @first_num * @second_num
  end

  def divide
    # Render the form for division
  end

  def wizard_divide
    # Perform division
    @first_num = params[:first_num].to_f
    @second_num = params[:second_num].to_f
    if @second_num.zero?
      @result = "Error: Division by zero is not allowed."
    else
      @result = @first_num / @second_num
    end
  end
end
