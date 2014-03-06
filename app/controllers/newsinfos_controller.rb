class NewsinfosController < ApplicationController
  before_action :set_newsinfo, only: [:show, :edit, :update, :destroy]

  # GET /newsinfos
  # GET /newsinfos.json
  def index
    @newsinfos = Newsinfo.all
  end

  # GET /newsinfos/1
  # GET /newsinfos/1.json
  def show
  end

  # GET /newsinfos/new
  def new
    @newsinfo = Newsinfo.new
  end

  # GET /newsinfos/1/edit
  def edit
  end

  # POST /newsinfos
  # POST /newsinfos.json
  def create
    @newsinfo = Newsinfo.new(newsinfo_params)

    respond_to do |format|
      if @newsinfo.save
        format.html { redirect_to @newsinfo, notice: 'Newsinfo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @newsinfo }
      else
        format.html { render action: 'new' }
        format.json { render json: @newsinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newsinfos/1
  # PATCH/PUT /newsinfos/1.json
  def update
    respond_to do |format|
      if @newsinfo.update(newsinfo_params)
        format.html { redirect_to @newsinfo, notice: 'Newsinfo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @newsinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newsinfos/1
  # DELETE /newsinfos/1.json
  def destroy
    @newsinfo.destroy
    respond_to do |format|
      format.html { redirect_to newsinfos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newsinfo
      @newsinfo = Newsinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newsinfo_params
      params.require(:newsinfo).permit(:name, :content, :published_on, :is_published, :approved_by , :author_id, :_slugs)
    end
end
