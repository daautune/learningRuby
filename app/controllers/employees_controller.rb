class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end
  def show 
    @employee = Employee.find_by id: params[:id]
  end
  def new
    @employee = Employee.new
  end

  def edit
    @employee = Employee.find_by id: params[:id]
  end
  def create
      em = Employee.new(employee_params)
      em.save
      redirect_to employees_path
  end

  def update 
      @employee = Employee.find_by id: params[:id]
      if @employee.update(employee_params)
          redirect_to @employee,
          notice: "employee was updated successfully"
      else 
          render :index
     end
  end

  def delete
      if @employee.delete
          redirect_to employees_path, notice: "employee was deleted successfully"
      else
          render :index
     end
  end

private 

  def set_employee
     @employee = Employee.find_by id:params[:id]
  end
  def employee_params
     params.require(:employee).permit :name, :email 
  end
end
