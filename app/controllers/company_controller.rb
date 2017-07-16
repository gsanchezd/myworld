class CompanyController < ApplicationController
  def show
    @company = Company.find(params[:id])
  end
end
