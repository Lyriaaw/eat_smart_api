class ApplicationController < ActionController::API

  def index
    binding.pry
    render json: { success: true }
  end


end
