class AppliancesController < ApplicationController

  def create

    @appliance = Appliance.new(params[:appliance_params])
    @offer = Offer.find(params[:offer_id])
    @appliance.offer = @offer
    @appliance.user = current_user
    authorize @appliance
    if @appliance.save
      redirect_to offer_path(@offer)
      flash[:notice] = "appliance saved successfully"
    else
      render "offers/show", status: :unprocessable_entity
    end
  end

  def index
    @my_appliances = current_user.appliances_as_owner
    @waiting = []
    @accepted = []
    @denied = []
    @seen = []
    @my_appliances.each do |element|
      if element[:seen] == false
        if element[:pending].nil?
          @waiting << element
        else
          element[:pending] == true ? @accepted << element : @denied << element
        end
      else
        @seen << element
      end
    end
  end

  def destroy
  end

  private

  def appliance_params
    params.require(:appliance).permit(:comment)
  end

end
