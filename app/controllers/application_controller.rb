class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def iframe_view
    response.headers.delete "X-Frame-Options"
  end
end
