class ContactpeopleController < ApplicationController
  before_action :set_contactperson, only: [:show, :edit, :update, :destroy]

  # GET /contactpeople
  # GET /contactpeople.json
  def index
    @contactpeople = Contactperson.all
  end

  # GET /contactpeople/1
  # GET /contactpeople/1.json
  def show
  end

  # GET /contactpeople/new
  def new
    @contactperson = Contactperson.new
  end

  # GET /contactpeople/1/edit
  def edit
  end

  # POST /contactpeople
  # POST /contactpeople.json
  def create
    @contactperson = Contactperson.new(contactperson_params)

    respond_to do |format|
      if @contactperson.save
        format.html { redirect_to @contactperson, notice: 'Contactperson was successfully created.' }
        format.json { render :show, status: :created, location: @contactperson }
      else
        format.html { render :new }
        format.json { render json: @contactperson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contactpeople/1
  # PATCH/PUT /contactpeople/1.json
  def update
    respond_to do |format|
      if @contactperson.update(contactperson_params)
        format.html { redirect_to @contactperson, notice: 'Contactperson was successfully updated.' }
        format.json { render :show, status: :ok, location: @contactperson }
      else
        format.html { render :edit }
        format.json { render json: @contactperson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contactpeople/1
  # DELETE /contactpeople/1.json
  def destroy
    @contactperson.destroy
    respond_to do |format|
      format.html { redirect_to contactpeople_url, notice: 'Contactperson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contactperson
      @contactperson = Contactperson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contactperson_params
      params.require(:contactperson).permit(:name, :tel, :fax, :mail, :customer_id, :order_id)
    end
end
