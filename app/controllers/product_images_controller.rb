class ProductImagesController < ApplicationController

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = ProductImage.find(params[:id])
    @product.destroy

    respond_to do |format|
     format.html { redirect_to(:back) }
     format.json { head :no_content }
    end
  end


end
