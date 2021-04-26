class LineItemsController < ApplicationController
  before_action :set_line_item, only: %i[ show edit update destroy ]
  before_action :set_order, only: %i[ index create new show ]
  before_action :set_store_id, only: %i[ index ] 
  Rails.logger = Logger.new(STDOUT)

  # GET /line_items or /line_items.json
  def index
    # @line_items = LineItem.all
    @line_items = LineItem.where(order_id:@order.id)
  end

  # GET /line_items/1 or /line_items/1.json
  def show
  end

  # GET /line_items/new
  def new
    @line_item = LineItem.new
    @line_item.product_id = params[:product_id]
    @line_item.order_id = params[:order_id]
    @line_item.quantity = :quantity
  end

  # GET /line_items/1/edit
  def edit
  end

  # POST /line_items or /line_items.json
  def create 
      @line_item = LineItem.new(line_item_params)
      respond_to do |format|
        if @line_item.save
          format.html { redirect_to '/line_items', notice: "Line item was successfully created." }
          format.json { render :show, status: :created, location: @line_item }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @line_item.errors, status: :unprocessable_entity }
        end
      end
  end

  # PATCH/PUT /line_items/1 or /line_items/1.json
  def update
    respond_to do |format|
      if @line_item.update(line_item_params)
        format.html { redirect_to @line_item, notice: "Line item was successfully updated." }
        format.json { render :show, status: :ok, location: @line_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_items/1 or /line_items/1.json
  def destroy
    @line_item.destroy
    respond_to do |format|
      format.html { redirect_to line_items_url, notice: "Line item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    def set_order
      @order = Order.find_by(customer_id:current_customer.id)
      if @order == nil
        @order = Order.new(customer_id:params[:customer_id], store_id:params[:store_id])
        @order.save
      end
    end

    def set_store_id
      @store_id = @order.store_id
    end

    # Only allow a list of trusted parameters through.
    def line_item_params
      params.require(:line_item).permit(:quantity, :product_id, :order_id)
    end

    def product_params
      params.require(:product)
    end
end
