class EmployeeDetailsController < ApplicationController

  def show
    @employee_detail = EmployeeDetail.find(params[:id])
  end

  def new
    @employee_detail = EmployeeDetail.new(employee_id: params[:employee_id])
  end

  def edit
    @employee_detail = EmployeeDetail.find(params[:id])
  end

  def create
    @employee_detail = EmployeeDetail.new(employee_detail_params)
    if @employee_detail.save 
      redirect_to @employee_detail   
    else 
      render 'new'
    end
  end

  def update
    @employee_detail = EmployeeDetail.find(params[:id])  
    if @employee_detail.update(employee_detail_params)
      redirect_to @employee_detail
    else
      render 'edit'
    end
  end

  private
  def employee_detail_params
    params.require(:employee_detail).permit(:employee_id, :name, :photo, :age, :marriage_status, :state, :address )
    # params.permit(:name, :department)
  end
end
