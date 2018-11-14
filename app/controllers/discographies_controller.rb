class DiscographiesController < ApplicationController
  before_action :set_discography, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /discographies
  # GET /discographies.json
  def index
    @discographies = Discography.all
  end

  # GET /discographies/1
  # GET /discographies/1.json
  def show
  end

  # GET /discographies/new
  def new
    @discography = Discography.new
  end

  # GET /discographies/1/edit
  def edit
  end

  # POST /discographies
  # POST /discographies.json
  def create
    @discography = Discography.new(discography_params)

    respond_to do |format|
      if @discography.save
        format.html { redirect_to @discography, notice: 'Discografia Criada.' }
        format.json { render :show, status: :created, location: @discography }
      else
        format.html { render :new }
        format.json { render json: @discography.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discographies/1
  # PATCH/PUT /discographies/1.json
  def update
    respond_to do |format|
      if @discography.update(discography_params)
        format.html { redirect_to @discography, notice: 'Discografia Atualizada.' }
        format.json { render :show, status: :ok, location: @discography }
      else
        format.html { render :edit }
        format.json { render json: @discography.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discographies/1
  # DELETE /discographies/1.json
  def destroy
    @discography.destroy
    respond_to do |format|
      format.html { redirect_to discographies_url, notice: 'Discografia Deletada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discography
      @discography = Discography.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discography_params
      params.require(:discography).permit(:name, :date_rise, :description)
    end
end
