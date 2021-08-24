class WelcomeController < ApplicationController
  def index
    render json: { response: 'This is a new response' }, status: :ok
  end
end
