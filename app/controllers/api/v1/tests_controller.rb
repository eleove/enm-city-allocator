class Api::V1::TestsController < ApplicationController
  def index
  	render json: {message: 'It works!'}
  end
end
