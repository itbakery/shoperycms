class ProductPlansController < ApplicationController
  before_action :set_product_plan, only: [:show, :edit, :update, :destroy]

  # GET /product_plans
  # GET /product_plans.json
  def index
    @product_plans = ProductPlan.all
  end

  # GET /product_plans/1
  # GET /product_plans/1.json
  def show
  end

  # GET /product_plans/new
  def new
    @product_plan = ProductPlan.new
  end

  # GET /product_plans/1/edit
  def edit
  end

  # POST /product_plans
  # POST /product_plans.json
  def create
    @product_plan = ProductPlan.new(product_plan_params)

    respond_to do |format|
      if @product_plan.save
        format.html { redirect_to @product_plan, notice: 'Product plan was successfully created.' }
        format.json { render action: 'show', status: :created, location: @product_plan }
      else
        format.html { render action: 'new' }
        format.json { render json: @product_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_plans/1
  # PATCH/PUT /product_plans/1.json
  def update
    respond_to do |format|
      if @product_plan.update(product_plan_params)
        format.html { redirect_to @product_plan, notice: 'Product plan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_plans/1
  # DELETE /product_plans/1.json
  def destroy
    @product_plan.destroy
    respond_to do |format|
      format.html { redirect_to product_plans_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_plan
      @product_plan = ProductPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_plan_params
      params.require(:product_plan).permit(:month, :content)
    end
end
