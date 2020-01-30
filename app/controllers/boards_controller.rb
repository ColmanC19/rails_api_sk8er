class BoardsController < ApplicationController

  def index
    @skater = Skater.find(params[:id])
    @boards = @skater.boards
    json_response(@boards)
  end

  def show
    @board = Board.find(params[:id])
    json_response(@board)
  end

  def create
    @board = Board.create!(board_params)
    json_response(@board, :created)
  end

  def update
    @board = Board.find(params[:id])
    if @board.update!(board_params)
    render status: 200, json: {
     message: "This board has been updated successfully."
     }
  end
end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def board_params
    params.permit(:color, :quark, :skater_id)
  end
end
