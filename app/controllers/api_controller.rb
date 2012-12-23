class ApiController < ApplicationController
  def getbymake
    makeID = params[:id]
    @allCarsWithMake = Car.where("make_id = ?", makeID)
    respond_to do |format|
      format.html # getbymake.html.erb
      format.json { render json: @allCarsWithMake }
    end
  end

  def getcategoriesbycar
    carID = params[:id]
    @selectedcar = Car.find(carID)
    @products = @selectedcar.products
    @uniqueCategories = @products.map(&:category_id).uniq
    @categoryObjects = Category.find(@uniqueCategories)
    respond_to do |format|
      format.html # getbymake.html.erb
      format.json { render json: @categoryObjects }
    end
  end

  def getproductsbycarandcategory
    carID = params[:carid]
    categoryID = params[:catid]
    @selectedcar = Car.find(carID)
    @products = @selectedcar.products.find_all_by_category_id(categoryID)
    respond_to do |format|
      format.html # getbymake.html.erb
      format.json { render json: @products }
    end
  end
end
