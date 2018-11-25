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

    respond_to do |format|
      if @kart_item.save
        format.html { redirect_to @kart_item, notice: 'Kart item was successfully created.' }
        format.json { render :show, status: :created, location: @kart_item }
      else
        format.html { render :new }
        format.json { render json: @kart_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kart_items/1
  # PATCH/PUT /kart_items/1.json
  def update
    respond_to do |format|
      if @kart_item.update(kart_item_params)
        format.html { redirect_to @kart_item, notice: 'Kart item was successfully updated.' }
        format.json { render :show, status: :ok, location: @kart_item }
      else
        format.html { render :edit }
        format.json { render json: @kart_item.errors, status: :unprocessable_entity }
      end
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
