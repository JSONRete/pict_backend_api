class InfosController < ApplicationController
  before_action :set_info, only: [:show, :update, :destroy]

  # GET /infos
  def index
    infos = Info.all
    # render json: InfoSerializer.new(infos, include: [:tool])
    render json: InfoSerializer.new(infos)



    # render json: infos
  end

  # GET /infos/1
  def show
    info = Info.find(params[:id])
    render json: InfoSerializer.new(info)
    # render json: info
  end

  # POST /infos
  def create
    info = Info.new(info_params)
    if info.save
      render json: InfoSerializer.new(info)
    else
      render json: info.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /infos/1
  def update
    info = Info.find(params[:id]) 
    if info.update(info_params)
      render json: info
    else
      render json: info.errors, status: :unprocessable_entity
    end
  end

  # DELETE /infos/1
  def destroy
    info = Info.find(params[:id]) 
    info.destroy
    render json: {message: "Production Info '#{info.name}' successfully deleted!"}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info
      info = Info.find(params[:id]) 
    end

    # Only allow a list of trusted parameters through.
    def info_params
      # params.require(:info).permit(:name, :tempo, :key)
      params.require(:info).permit(:name, :tempo, :key, :tool_id)
    end
end
