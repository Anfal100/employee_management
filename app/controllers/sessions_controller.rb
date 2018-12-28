class SessionsController < ApplicationController

  def new
  end

  def create
    @employee_signup = EmployeeSignup.find_by(email: params[:employee_signup][:email])
    if @employee_signup && @employee_signup.authenticate(params[:employee_signup][:password])
      session[:employee_signup_id] = @employee_signup.id 
      flash[:notice] = 'Login Successful'
      redirect_to new_employee_path
    else
      flash[:alert] = 'Invalid email and password'
      render :new 
    end
  end

  def destroy
    session[:employee_signup_id] = nil
    flash[:notice] = 'logout Successful'
    redirect_to root_path
  end 
end
