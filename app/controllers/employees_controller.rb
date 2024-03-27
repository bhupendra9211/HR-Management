class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end
  def new
    @employee = Employee.new
  end
  def create
    # @employee = Employee.new(first_name: params[:employee] [:first_name],
    # middle_name: params[:employee] [:middle_name],last_name: params[:employee] [:last_name],
    # personal_email: params[:employee] [:personal_email],country: params[:employee] [:country],
    # city: params[:employee] [:city],address_line_1: params[:employee] [:address_line_1],address_line_2: params[:employee] [:address_line_2])
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employees_path, notice: 'Employee has been created sucessfully'
    else
      render :new
    end
  end
  def edit
    @employee = Employee.find(params[:id])
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :middle_name, :last_name, :personal_email, :country, :city, :address_line_1, :address_line_2)
  end

end