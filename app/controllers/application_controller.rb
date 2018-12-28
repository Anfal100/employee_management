class ApplicationController < ActionController::Base
  helper_method :current_employee, :employee_logged_in?

  def current_employee
    if session[:employee_signup_id]
    @employee_signup = EmployeeSignup.find(session[:employee_signup_id])
    end
  end

  def employee_logged_in?
   session[:employee_signup_id].present?
  end

    def check_employee_access?
      unless employee_logged_in?
        flash[:notice] = 'You cannot access this page.'
        redirect_to root_path
      end
    end
end
