class SkatersController < ApplicationController

  def index
    @skaters = Skater.all
    json_response(@skaters)
  end

  def show
    @skater = Skater.find(params[:id])
    json_response(@skater)
  end

  def create
    @skater = Skater.create!(skater_params)
    json_response(@skater, :created)
  end

  def update
    @skater = Skater.find(params[:id])
    if @skater.update!(skater_params)
      render status: 200, json: {
        message: "This skater has been updated successfully."
      }
    end
  end

  def destroy
    @skater = Skater.find(params[:id])
    @skater.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def skater_params
    params.permit(:skill, :name)
  end
end
