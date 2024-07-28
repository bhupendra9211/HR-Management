class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end
  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employees_path, notice: 'Employee has been created successfully'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to employees_path
    else
      render :edit
    end
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name,:middle_name,:last_name,:personal_email,:district,:zone,:province,:temporary_address,:permanent_address,:country)
    # params.require(:employee).permit!
  end
end