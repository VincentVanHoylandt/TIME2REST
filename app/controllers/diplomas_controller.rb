class DiplomasController < ApplicationController
  before_action :set_diploma, only: %i[edit update]

  def create
    @diploma = Diploma.new
    # authorize @diploma
  end

  private

  def diploma_params
    params.require(:diploma).permit(:title, :description, :start_time, :end_time)
  end

  def set_diploma
    @diploma = Diploma.find(params[:id])
  end
end
