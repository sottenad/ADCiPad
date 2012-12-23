class CarsProductsController < ApplicationController
  # GET /cars_products
  # GET /cars_products.json
  def index
    @cars_products = CarsProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cars_products }
    end
  end

  # GET /cars_products/1
  # GET /cars_products/1.json
  def show
    @cars_product = CarsProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cars_product }
    end
  end

  # GET /cars_products/new
  # GET /cars_products/new.json
  def new
    @cars_product = CarsProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cars_product }
    end
  end

  # GET /cars_products/1/edit
  def edit
    @cars_product = CarsProduct.find(params[:id])
  end

  # POST /cars_products
  # POST /cars_products.json
  def create
    @cars_product = CarsProduct.new(params[:cars_product])

    respond_to do |format|
      if @cars_product.save
        format.html { redirect_to @cars_product, notice: 'Cars product was successfully created.' }
        format.json { render json: @cars_product, status: :created, location: @cars_product }
      else
        format.html { render action: "new" }
        format.json { render json: @cars_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cars_products/1
  # PUT /cars_products/1.json
  def update
    @cars_product = CarsProduct.find(params[:id])

    respond_to do |format|
      if @cars_product.update_attributes(params[:cars_product])
        format.html { redirect_to @cars_product, notice: 'Cars product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cars_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars_products/1
  # DELETE /cars_products/1.json
  def destroy
    @cars_product = CarsProduct.find(params[:id])
    @cars_product.destroy

    respond_to do |format|
      format.html { redirect_to cars_products_url }
      format.json { head :no_content }
    end
  end
end
