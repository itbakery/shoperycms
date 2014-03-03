class PriceSchemasController < ApplicationController
  before_action :set_price_schema, only: [:show, :edit, :update, :destroy]

  # GET /price_schemas
  # GET /price_schemas.json
  def index
    @price_schemas = PriceSchema.all
  end

  # GET /price_schemas/1
  # GET /price_schemas/1.json
  def show
  end

  # GET /price_schemas/new
  def new
    @price_schema = PriceSchema.new
  end

  # GET /price_schemas/1/edit
  def edit
  end

  # POST /price_schemas
  # POST /price_schemas.json
  def create
    @price_schema = PriceSchema.new(price_schema_params)

    respond_to do |format|
      if @price_schema.save
        format.html { redirect_to @price_schema, notice: 'Price schema was successfully created.' }
        format.json { render action: 'show', status: :created, location: @price_schema }
      else
        format.html { render action: 'new' }
        format.json { render json: @price_schema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /price_schemas/1
  # PATCH/PUT /price_schemas/1.json
  def update
    respond_to do |format|
      if @price_schema.update(price_schema_params)
        format.html { redirect_to @price_schema, notice: 'Price schema was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @price_schema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /price_schemas/1
  # DELETE /price_schemas/1.json
  def destroy
    @price_schema.destroy
    respond_to do |format|
      format.html { redirect_to price_schemas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price_schema
      @price_schema = PriceSchema.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_schema_params
      params.require(:price_schema).permit(:quantity, :unit, :price)
    end
end
