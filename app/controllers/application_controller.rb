class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :hello

  def hello
    "Hello World"
  end
end
