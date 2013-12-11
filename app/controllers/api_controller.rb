class ApiController < ApplicationController


  def getyears
    @years = Year.all

    respond_to do |format|
      format.html # getyears.html.erb
      format.json { render json: @years }
    end
  end

  def getmakesbyyear
    yearID = params[:id]
    carsWithYear = Year.find(yearID).cars
    @uniqueMakes = carsWithYear.map(&:make_id).uniq
    @makeObjects = Make.where(:id => @uniqueMakes).order('name ASC')
    respond_to do |format|
      format.html # getbymake.html.erb
      format.json { render json: @makeObjects }
    end
  end

  def getcarsbymake
    makeID = params[:id]
    @allCarsWithMake = Car.find(:all, :conditions => { :make_id => makeID},  :order => 'model')
    respond_to do |format|
      format.html # getbymake.html.erb
      format.json { render json: @allCarsWithMake }
    end
  end
  
  def getcarsbymakeandyear
    makeID = params[:makeid]
    yearID = params[:yearid]

    @allCarsWithMake = Car.includes(:years).where(years:{id: yearID}, make_id: makeID)

    
    
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
    @categoryObjects = Category.find(@uniqueCategories, :order => 'name')
    respond_to do |format|
      format.html # getbymake.html.erb
      format.json { render json: @categoryObjects }
    end
  end
  
  def getmfgbycarandcat
    carID = params[:carid]
    @selectedcar = Car.find(carID)
    catID = params[:catid]    
    @products = @selectedcar.products.uniq

    @uniqueMfg = @products.map(&:manufacturer_id).uniq
    @mfgObjects = Manufacturer.find(@uniqueMfg, :order => 'name')
    respond_to do |format|
      format.html # getbymake.html.erb
      format.json { render json: @mfgObjects }
    end
  end

  def getproductsbycarcat
    carID = params[:carid]
    categoryID = params[:catid]
    @selectedcar = Car.find(carID)
    @products = @selectedcar.products.find_all_by_category_id(categoryID, :order => 'name').uniq
    respond_to do |format|
      format.html # getbymake.html.erb
      format.json { render json: @products, :include => {:product_images => {:methods => [:image_url]}}  }
    end
  end

end
