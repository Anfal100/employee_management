class EmployeeAttendancesController < ApplicationController
     before_action :check_employee_access? 
  
  def index
    @employee = Employee.find(params[:employee_id])
    @employee_attendances = @employee.employee_attendances
  end

  def show
    @employee_attendance = EmployeeAttendance.find(params[:id])
  end

  def new
    @employee_attendance = EmployeeAttendance.new(employee_id: params[:employee_id])
  end

  def create
    @employee_attendance= EmployeeAttendance.new(employee_attendance_params)
    if @employee_attendance.save 
      redirect_to @employee_attendance  
    else 
      render 'new'
    end
  end

  private
  def employee_attendance_params
    params.require(:employee_attendance).permit(:employee_id, :status, :date)
  end
end

