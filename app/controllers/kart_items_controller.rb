class KartItemsController < ApplicationController
  before_action :set_kart_item, only: [:show, :edit, :update, :destroy]

  # GET /kart_items
  # GET /kart_items.json
  def index
    @kart_items = KartItem.all
  end

  # GET /kart_items/1
  # GET /kart_items/1.json
  def show
  end

  # GET /kart_items/new
  def new
    @kart_item = KartItem.new
  end

  # GET /kart_items/1/edit
  def edit
  end

  # POST /kart_items
  # POST /kart_items.json
  def create
    @kart_item = KartItem.new(kart_item_params)
    @equal = KartItem.where(product_id: @kart_item.product_id).first;
    if @equal.nil?
      @kart_item.save
      @ok = true
    else
      @new_quantity = @kart_item.quantity + @equal.quantity;
      @equal.update(quantity: @new_quantity)
      @ok=true
    end
  end

  # PATCH/PUT /kart_items/1
  # PATCH/PUT /kart_items/1.json
  def update
    if kart_item_params[:quantity].to_i > 0 
      @kart_item.update(kart_item_params);
    else
      @kart_item.destroy
    end
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: 'Kart item was successfully updated.' }
      format.json { render :show, status: :ok, location: @kart_item }
    end
  end

  # DELETE /kart_items/1
  # DELETE /kart_items/1.json
  def destroy
    @kart_item.destroy
    respond_to do |format|
      format.html { redirect_to kart_items_url, notice: 'Kart item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kart_item
      @kart_item = KartItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kart_item_params
      params.require(:kart_item).permit(:quantity, :product_id)
    end
end
