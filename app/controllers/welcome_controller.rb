class WelcomeController < ApplicationController
  def index
    render json: { response: 'OK' }, status: :ok
  end
end
