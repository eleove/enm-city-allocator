# frozen_string_literal: true

module Api
  module V1
    class CitiesController < ApplicationController
      # ActionController::Base (Le Wagon)
      def index
        cities = City.all
        render json: cities
      end
    end
  end
end
