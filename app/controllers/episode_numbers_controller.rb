class EpisodeNumbersController < ApplicationController
  before_action :set_episode_number, only: [:show, :update, :destroy]

  # GET /episode_numbers
  def index
    @episode_numbers = EpisodeNumber.all

    render json: @episode_numbers
  end

  # GET /episode_numbers/1
  def show
    render json: @episode_number
  end

  # POST /episode_numbers
  def create
    @episode_number = EpisodeNumber.new(episode_number_params)

    if @episode_number.save
      render json: @episode_number, status: :created, location: @episode_number
    else
      render json: @episode_number.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /episode_numbers/1
  def update
    if @episode_number.update(episode_number_params)
      render json: @episode_number
    else
      render json: @episode_number.errors, status: :unprocessable_entity
    end
  end

  # DELETE /episode_numbers/1
  def destroy
    @episode_number.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_episode_number
      @episode_number = EpisodeNumber.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def episode_number_params
      params.require(:episode_number).permit(:attribute)
    end
end
