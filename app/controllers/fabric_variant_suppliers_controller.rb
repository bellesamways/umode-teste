class FabricVariantSuppliersController < ApplicationController
  before_action :set_fabric_variant_supplier, only: [:show, :edit, :update, :destroy]

  # GET /fabric_variant_suppliers
  # GET /fabric_variant_suppliers.json
  def index
    @fabric_variant_suppliers = FabricVariantSupplier.all
  end

  # GET /fabric_variant_suppliers/1
  # GET /fabric_variant_suppliers/1.json
  def show
  end

  # GET /fabric_variant_suppliers/new
  def new
    @fabric_variant_supplier = FabricVariantSupplier.new
  end

  # GET /fabric_variant_suppliers/1/edit
  def edit
  end

  # POST /fabric_variant_suppliers
  # POST /fabric_variant_suppliers.json
  def create
    @fabric_variant_supplier = FabricVariantSupplier.new(fabric_variant_supplier_params)

    respond_to do |format|
      if @fabric_variant_supplier.save
        format.html { redirect_to @fabric_variant_supplier, notice: 'Fabric variant supplier was successfully created.' }
        format.json { render :show, status: :created, location: @fabric_variant_supplier }
      else
        format.html { render :new }
        format.json { render json: @fabric_variant_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fabric_variant_suppliers/1
  # PATCH/PUT /fabric_variant_suppliers/1.json
  def update
    respond_to do |format|
      if @fabric_variant_supplier.update(fabric_variant_supplier_params)
        format.html { redirect_to @fabric_variant_supplier, notice: 'Fabric variant supplier was successfully updated.' }
        format.json { render :show, status: :ok, location: @fabric_variant_supplier }
      else
        format.html { render :edit }
        format.json { render json: @fabric_variant_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fabric_variant_suppliers/1
  # DELETE /fabric_variant_suppliers/1.json
  def destroy
    @fabric_variant_supplier.destroy
    respond_to do |format|
      format.html { redirect_to fabric_variant_suppliers_url, notice: 'Fabric variant supplier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fabric_variant_supplier
      @fabric_variant_supplier = FabricVariantSupplier.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fabric_variant_supplier_params
      params.require(:fabric_variant_supplier).permit(:price_cents, :price_currency, :price_unit, :min_purchase, :fabric_variant_id)
    end
end
