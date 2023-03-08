class ReviewsController < ApplicationController

# def new
  # @review = Review.find(params[:review_id])
  # @appliance = Appliance.new
  # authorize @appliance
# end

# def create
  # @review = review.find(params[:review_id])
  # @appliance = Appliance.new(appliance_params)
  # @appliance.review = @review
  # @appliance.user = current_user
  # authorize @appliance
  # if @appliance.save
  #   redirect_to review_path(@review)
  #   flash[:notice] = "appliance saved successfully"
  # else
  #   render "reviews/show", status: :unprocessable_entity
#   end
# end

# def destroy
# end

# def index
  # @appliances = policy_scope(appliance)
  # @my_appliances = current_user.appliances_as_owner
  # @waiting = []
  # @accepted = []
  # @denied = []
  # @red = []
  # @my_appliances.each do |element|
  #   if element[:red] == false
  #     if element[:pending].nil?
  #       @waiting << element
  #     else
  #       element[:pending] == true ? @accepted << element : @denied << element
  #     end
  #   else
  #     @red << element
  #   end
  # end
# end

# def demands
  # @booking = Booking.new
  # authorize @booking
# end

# end

# private

# def review_params
# params.require(:review).permit(:content, :rating)
# end

end
