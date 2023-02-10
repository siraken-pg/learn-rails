class Api::V1::VersionController < ApplicationController
  def index
    render json: { version: '1.0.0' }
  end
end
