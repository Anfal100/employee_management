  class EmployeeLeavesController < ApplicationController

    
    def new
       @employee_leave = EmployeeLeave.new(employee_id: params[:employee_id])
    end

    def create
       @employee_leave = EmployeeLeave.new(employee_leave_params)
        if @employee_leave.save 
         redirect_to @employee_leave  
    else 
      render 'new'
     end
  end

    private
       def employee_leave_params
       params.require(:employee_leave).permit(:employee_id, :leave_type, :start_date, :end_date, :description)
     end
  end

