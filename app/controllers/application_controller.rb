class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def signed_in?
    user_signed_in? || employee_signed_in?
  end

  def usuario_c
    current_user || current_employee
  end


  def iframe_view
    response.headers.delete "X-Frame-Options"
  end
end
