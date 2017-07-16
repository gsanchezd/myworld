class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def iframe_view
    response.headers.delete "X-Frame-Options"
  end

  def after_sign_in_path_for(resource)
    if resource.is_a?(Employee)
      job_path(current_employee.company_id)
    else
      super
    end
  end

end
