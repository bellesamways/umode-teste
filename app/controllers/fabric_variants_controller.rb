class FabricVariantsController < ApplicationController
  before_action :set_fabric_variant, only: [:show, :edit, :update, :destroy]

  # GET /fabric_variants
  # GET /fabric_variants.json
  def index
    @fabric_variants = FabricVariant.all
  end

  # GET /fabric_variants/1
  # GET /fabric_variants/1.json
  def show
  end

  # GET /fabric_variants/new
  def new
    @fabric_variant = FabricVariant.new
  end

  # GET /fabric_variants/1/edit
  def edit
  end

  # POST /fabric_variants
  # POST /fabric_variants.json
  def create
    @fabric_variant = FabricVariant.new(fabric_variant_params)

    respond_to do |format|
      if @fabric_variant.save
        format.html { redirect_to @fabric_variant, notice: 'Fabric variant was successfully created.' }
        format.json { render :show, status: :created, location: @fabric_variant }
      else
        format.html { render :new }
        format.json { render json: @fabric_variant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fabric_variants/1
  # PATCH/PUT /fabric_variants/1.json
  def update
    respond_to do |format|
      if @fabric_variant.update(fabric_variant_params)
        format.html { redirect_to @fabric_variant, notice: 'Fabric variant was successfully updated.' }
        format.json { render :show, status: :ok, location: @fabric_variant }
      else
        format.html { render :edit }
        format.json { render json: @fabric_variant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fabric_variants/1
  # DELETE /fabric_variants/1.json
  def destroy
    @fabric_variant.destroy
    respond_to do |format|
      format.html { redirect_to fabric_variants_url, notice: 'Fabric variant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fabric_variant
      @fabric_variant = FabricVariant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fabric_variant_params
      params.require(:fabric_variant).permit(:name, :reference, :observation, :composition, :grammage, :width, :fabric_id)
    end
end
