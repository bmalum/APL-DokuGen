class DokuIDsController < ApplicationController
  before_action :set_doku_id, only: [:show, :edit, :update, :destroy]

  # GET /doku_ids
  # GET /doku_ids.json
  def index
    @doku_ids = DokuId.all
  end

  # GET /doku_ids/1
  # GET /doku_ids/1.json
  def show
  end

  # GET /doku_ids/new
  def new
    @doku_id = DokuId.new
  end

  # GET /doku_ids/1/edit
  def edit
  end

  # POST /doku_ids
  # POST /doku_ids.json
  def create
    @doku_id = DokuId.new(doku_id_params)

    respond_to do |format|
      if @doku_id.save
        format.html { redirect_to @doku_id, notice: 'Doku was successfully created.' }
        format.json { render :show, status: :created, location: @doku_id }
      else
        format.html { render :new }
        format.json { render json: @doku_id.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doku_ids/1
  # PATCH/PUT /doku_ids/1.json
  def update
    respond_to do |format|
      if @doku_id.update(doku_id_params)
        format.html { redirect_to @doku_id, notice: 'Doku was successfully updated.' }
        format.json { render :show, status: :ok, location: @doku_id }
      else
        format.html { render :edit }
        format.json { render json: @doku_id.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doku_ids/1
  # DELETE /doku_ids/1.json
  def destroy
    @doku_id.destroy
    respond_to do |format|
      format.html { redirect_to doku_ids_url, notice: 'Doku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doku_id
      @doku_id = DokuId.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doku_id_params
      params.require(:doku_id).permit(:w_number_id, :dokument_id)
    end
end
