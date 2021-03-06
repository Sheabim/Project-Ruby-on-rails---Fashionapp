class GarmentTypesController < ApplicationController
  #before_action :set_garment_type, only: [:show, :edit, :update, :destroy]

  # GET /garment_types
  # GET /garment_types.json
  def index
    @garment_types = GarmentType.all
  end

  # GET /garment_types/1
  # GET /garment_types/1.json
  def show
    @garment_type = GarmentType.find(params[:id])
  end

  # GET /garment_types/new
  def new
    @garment_type = GarmentType.new
  end

  # GET /garment_types/1/edit
  def edit
    @garment_type = GarmentType.find(params[:id])
  end

  # POST /garment_types
  # POST /garment_types.json
  def create
    @garment_type = GarmentType.new(garment_type_params)

    respond_to do |format|
      if @garment_type.save
        format.html { redirect_to @garment_type, notice: 'Garment type was successfully created.' }
        format.json { render :show, status: :created, location: @garment_type }
      else
        format.html { render :new }
        format.json { render json: @garment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garment_types/1
  # PATCH/PUT /garment_types/1.json
  def update
    @garment_type = GarmentType.find(params[:id])
    respond_to do |format|
      if @garment_type.update(garment_type_params)
        format.html { redirect_to @garment_type, notice: 'Garment type was successfully updated.' }
        format.json { render :show, status: :ok, location: @garment_type }
      else
        format.html { render :edit }
        format.json { render json: @garment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garment_types/1
  # DELETE /garment_types/1.json
  def destroy
    @garment_type = GarmentType.find(params[:id])
    @garment_type.destroy
    respond_to do |format|
      format.html { redirect_to garment_types_url, notice: 'Garment type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    #def set_garment_type
    #  @garment_type = GarmentType.find(params[:id])
    #end

    # Never trust parameters from the scary internet, only allow the white list through.
    def garment_type_params
      params.require(:garment_type).permit(:name, :icon)
    end
end
