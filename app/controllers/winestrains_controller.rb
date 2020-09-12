class WinestrainsController < ApplicationController
  before_action :set_winestrain, only: [:show, :edit, :update, :destroy]
  

  # GET /winestrains
  # GET /winestrains.json
  def index
    @winestrains = Winestrain.all
  end

  # GET /winestrains/1
  # GET /winestrains/1.json
  def show
  end

  # GET /winestrains/new
  def new
    @winestrain = Winestrain.new
  end

  # GET /winestrains/1/edit
  def edit
  end

  # POST /winestrains
  # POST /winestrains.json
  def create
    @winestrain = Winestrain.new(winestrain_params)

    respond_to do |format|
      if @winestrain.save
        format.html { redirect_to @winestrain, notice: 'Winestrain was successfully created.' }
        format.json { render :show, status: :created, location: @winestrain }
      else
        format.html { render :new }
        format.json { render json: @winestrain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /winestrains/1
  # PATCH/PUT /winestrains/1.json
  def update
    respond_to do |format|
      if @winestrain.update(winestrain_params)
        format.html { redirect_to @winestrain, notice: 'Winestrain was successfully updated.' }
        format.json { render :show, status: :ok, location: @winestrain }
      else
        format.html { render :edit }
        format.json { render json: @winestrain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /winestrains/1
  # DELETE /winestrains/1.json
  def destroy
    @winestrain.destroy
    respond_to do |format|
      format.html { redirect_to winestrains_url, notice: 'Winestrain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_winestrain
      @winestrain = Winestrain.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def winestrain_params
      params.require(:winestrain).permit(:wine_id, :strain_id, :percentage)
    end
end
