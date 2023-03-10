class OffersController < ApplicationController
  before_action :set_offer, only: [:update, :edit, :destroy, :show]

  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
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
    if params[:job_title].present? && params[:address].present?
      @offers = Offer.where("job_title ILIKE ?", "%#{params[:job_title]}%").where("address ILIKE ?", "%#{params[:address]}%")
    elsif params[:job_title].present?
      @offers = Offer.where("job_title ILIKE ?", "%#{params[:job_title]}%")
    elsif params[:address].present?
      @offers = Offer.where("address ILIKE ?", "%#{params[:address]}%")
    end
  end

  def show
    authorize @offer
  end

  def edit
    authorize @offer
  end

  def update
    authorize @offer
  end

  def destroy
    authorize @offer
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  private

  def offer_params
      params.require(:offer).permit(:job_title, :description, :start_time, :end_time, :salary)
  end

end
