class ApiController < ApplicationController
  def getbymake
    makeID = params[:id]
    @allCarsWithMake = Car.where("make_id = ?", makeID)
    respond_to do |format|
      format.html # getbymake.html.erb
      format.json { render json: @makes }
    end
  end
end
