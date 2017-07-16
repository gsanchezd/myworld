class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :company_employee
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :company, optional: true

  validate :company_exist

  def company_exist
    company = Company.find_by(name: self.company_employee)
    if company.present?
      errors[:base] << 'La empresa ingresada ya existe'
    else
      company = Company.create(name: self.company_employee)
      self.company = company
    end
  end

end
