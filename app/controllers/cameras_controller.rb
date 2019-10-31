class CamerasController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]
before_action :set_camera, only: [:show, :edit, :update, :destroy]

  def index
    @cameras = policy_scope(Camera).order(created_at: :desc)

    # Instead of @cameras = Camera.geocoded
    @cameras = @cameras.select  do |c|
      c.latitude && c.longitude
    end

    @markers = @cameras.map do |camera|
      {
        lat: camera.latitude,
        lng: camera.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { camera: camera } ),
        image_url: helpers.asset_url('https://image.flaticon.com/icons/svg/149/149641.svg')
      }
    end
  end

  def new
    @camera = Camera.new
    authorize @camera
  end

  def create
    @camera = Camera.new(camera_params)
    @camera.user = current_user
    authorize @camera
    if @camera.save
      redirect_to camera_path(@camera)
    else
      render :new
    end
  end

  def show
    @booking = Booking.new
  end

  def edit
  end

  def update
    @camera.update(camera_params)
    redirect_to camera_path(@camera)
  end

  def destroy
    @camera.destroy
    redirect_to cameras_path
  end

  private

  def set_camera
    @camera = Camera.find(params[:id])
    authorize @camera
  end

  def camera_params
    params.require(:camera).permit(:name, :address, :category, :description, :policies, :price_per_day, :photo)
  end

end
