class ApplicationController < ActionController::Base
  respond_to :json
  
  protect_from_forgery with: :null_session
  
  def index
    render 'layouts/application'
  end
end
