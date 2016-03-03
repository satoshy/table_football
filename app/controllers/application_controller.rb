class ApplicationController < ActionController::Base
  respond_to :json

  def index
    render 'layouts/application'
  end
end
