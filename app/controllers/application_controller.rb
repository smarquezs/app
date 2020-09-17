class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :hello

  def hello; end

  def new_method; end

  def dummy; end
end
