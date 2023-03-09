class OffersController < ApplicationController
  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offers_path(@offer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    if params[:job_title].present? && params[:address].present?
      @offers = Offer.where("job_title ILIKE ?", "%#{params[:job_title]}%").where("address ILIKE ?", "%#{params[:address]}%")
    elsif params[:job_title].present?
      @offers = Offer.where("job_title ILIKE ?", "%#{params[:job_title]}%")
    elsif params[:address].present?
      @offers = Offer.where("address ILIKE ?", "%#{params[:address]}%")
    else
      @offers = Offer.all
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def offer_params
      params.require(:offer).permit(:job_title, :description, :start_time, :end_time, :salary)
  end

end
