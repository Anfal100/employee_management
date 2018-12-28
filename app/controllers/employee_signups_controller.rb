class EmployeeSignupsController < ApplicationController 

  def show
    @employee_signup = EmployeeSignup.find(params[:id])
  end

  def new
    @employee_signup = EmployeeSignup.new
  end

  def create
   @employee_signup = EmployeeSignup.new(employee_signup_params)
    if @employee_signup.save
        flash[:notice] = "You signed up successfully"
        redirect_to @employee_signup
    else
      flash[:notice] = "Form is invalid"
      render 'new'
    end
  end

  private
    def employee_signup_params
      params.require(:employee_signup).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
