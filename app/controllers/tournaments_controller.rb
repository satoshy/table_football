class TournamentsController < ApplicationController
  before_action :set_tournament, only: [:show, :edit, :update, :destroy]

  def index
    @tournaments = Tournament.all
    render json: @tournaments
  end

  def show
    render json: @tournament
  end

  def new
    @tournament = Tournament.new
  end

  def edit
    render json: @tournament
  end

  def create
    @tournament = Tournament.create(tournament_params)

    render json: @tournament, status:201
  end

  def update
    @tournament.update_attributes(tournament_params)
    
    render nothing:true, status:204
  end

  def destroy
    @tournament.destroy
    
    render nothing:true, status:204
  end

  private
    def set_tournament
      @tournament = Tournament.find(params[:id])
    end

    def tournament_params
      params.require(:tournament).permit(:name, :description, :status_type)
    end
end