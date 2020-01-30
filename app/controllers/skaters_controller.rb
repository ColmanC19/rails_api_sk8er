class SkatersController < ApplicationController

  def index
    @skaters = {"quotation": "The secret of getting ahead is getting started."}
    json_response(@skaters)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
