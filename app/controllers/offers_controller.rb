class OffersController < ApplicationController
  before_action :set_offer, only: [:update, :edit, :destroy, :show]

  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
    start_time = offer_params["start_time"].split.first
    end_time = offer_params["start_time"].split.last
    @offer.start_time = start_time
    @offer.end_time = end_time
    @offer.user = current_user
    authorize @offer
    if @offer.save
      redirect_to offers_path(@offer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @offers = policy_scope(Offer)
    @user = current_user
    if params[:job_title].present? && params[:address].present?
      @offers = Offer.where("job_title ILIKE ?", "%#{params[:job_title]}%").where("address ILIKE ?", "%#{params[:address]}%")
    elsif params[:job_title].present?
      @offers = Offer.where("job_title ILIKE ?", "%#{params[:job_title]}%")
    elsif params[:address].present?
      @offers = Offer.where("address ILIKE ?", "%#{params[:address]}%")
    end

    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude
      }
    end
  end

  def show
    set_offer
    @offer.user = current_user
    authorize @offer
  end

  def edit
    authorize @offer
  end

  def update
    # @offer.update(offer_params)
    # redirect_to offer_path(@offer)
    authorize @offer
  end

  def destroy
    set_offer
    authorize @offer
    @offer.destroy
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:job_title, :description, :start_time, :end_time, :salary)
  end
end
