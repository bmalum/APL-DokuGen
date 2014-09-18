class WNumbersController < ApplicationController
  before_action :set_w_number, only: [:show, :edit, :update, :destroy]

  # GET /w_numbers
  # GET /w_numbers.json

  def index
      @w_numbers = WNumber.search(params[:search])
    #@w_numbers = WNumber.all
  end

  # GET /w_numbers/1
  # GET /w_numbers/1.json
  def show
    @w_numbers = WNumber.find(params[:id])
    @order = Order.find(@w_numbers.order_id)
    @customer = Customer.find(@order.customer_id)
    begin
    @contact = Contactperson.find(@order.contactperson_id)
    rescue
    flash[:alert] = "keine Kontaktperson angegeben!"
  end
  end

  # GET /w_numbers/new
  def new
        @w_number = WNumber.new
  end

  # GET /w_numbers/1/edit
  def edit
  end

  # POST /w_numbers
  # POST /w_numbers.json
  def create
    @w_number = WNumber.new(w_number_params)

    respond_to do |format|
      if @w_number.save
        format.html { redirect_to @w_number, notice: 'W number was successfully created.' }
        format.json { render :show, status: :created, location: @w_number }
      else
        format.html { render :new }
        format.json { render json: @w_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /w_numbers/1
  # PATCH/PUT /w_numbers/1.json
  def update
    respond_to do |format|
      if @w_number.update(w_number_params)
        format.html { redirect_to @w_number, notice: 'W number was successfully updated.' }
        format.json { render :show, status: :ok, location: @w_number }
      else
        format.html { render :edit }
        format.json { render json: @w_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /w_numbers/1
  # DELETE /w_numbers/1.json
  def destroy
    @w_number.destroy
    respond_to do |format|
      format.html { redirect_to w_numbers_url, notice: 'W number was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_w_number
      @w_number = WNumber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def w_number_params
      params.require(:w_number).permit(:number, :darwing_number, :year, :standard, :tag_number, :name, :order_id)
    end
end
