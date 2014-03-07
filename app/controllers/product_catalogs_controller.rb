class ProductCatalogsController < ApplicationController
  before_action :set_product_catalog, only: [:show, :edit, :update, :destroy]

  # GET /product_catalogs
  # GET /product_catalogs.json
  def index
    @product_catalogs = ProductCatalog.all
  end

  # GET /product_catalogs/1
  # GET /product_catalogs/1.json
  def show
  end

  # GET /product_catalogs/new
  def new
    @product_catalog = ProductCatalog.new
    3.times do
       @product_catalog.photo_products.build
    end
  end

  # GET /product_catalogs/1/edit
  def edit
  end

  # POST /product_catalogs
  # POST /product_catalogs.json
  def create
    @product_catalog = ProductCatalog.new(product_catalog_params)

    respond_to do |format|
      if @product_catalog.save
        format.html { redirect_to @product_catalog, notice: 'Product catalog was successfully created.' }
        format.json { render action: 'show', status: :created, location: @product_catalog }
      else
        format.html { render action: 'new' }
        format.json { render json: @product_catalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_catalogs/1
  # PATCH/PUT /product_catalogs/1.json
  def update
    respond_to do |format|
      if @product_catalog.update(product_catalog_params)
        format.html { redirect_to @product_catalog, notice: 'Product catalog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product_catalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_catalogs/1
  # DELETE /product_catalogs/1.json
  def destroy
    @product_catalog.destroy
    respond_to do |format|
      format.html { redirect_to product_catalogs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_catalog
      @product_catalog = ProductCatalog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # add  photo_products_attributes: [:name , :photo]
    def product_catalog_params
      params.require(:product_catalog).permit(:name, :description, :released_on, photo_products_attributes: [:name , :photo] )
    end
end
