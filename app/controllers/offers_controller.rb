class OffersController < ApplicationController
  def new
  end

  def create
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
end
