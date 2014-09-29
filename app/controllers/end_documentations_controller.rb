require 'date'

class EndDocumentationsController < ApplicationController
  before_action :set_end_documentation, only: [:show, :edit, :update, :destroy]

  # GET /end_documentations
  # GET /end_documentations.json
  def index
    @end_documentations = EndDocumentation.all
  end

  # GET /end_documentations/1
  # GET /end_documentations/1.json
  def show
  end

  # GET /end_documentations/new
  def new
    @end_documentation = EndDocumentation.new
  end

  # GET /end_documentations/1/edit
  def edit
  end

  # POST /end_documentations
  # POST /end_documentations.json
  def create
    @end_documentation = EndDocumentation.new(end_documentation_params)

    respond_to do |format|
      if @end_documentation.save
        format.html { redirect_to @end_documentation, notice: 'End documentation was successfully created.' }
        format.json { render :show, status: :created, location: @end_documentation }
      else
        format.html { render :new }
        format.json { render json: @end_documentation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /end_documentations/1
  # PATCH/PUT /end_documentations/1.json
  def update
    respond_to do |format|
      if @end_documentation.update(end_documentation_params)
        format.html { redirect_to @end_documentation, notice: 'End documentation was successfully updated.' }
        format.json { render :show, status: :ok, location: @end_documentation }
      else
        format.html { render :edit }
        format.json { render json: @end_documentation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /end_documentations/1
  # DELETE /end_documentations/1.json
  def destroy
    @end_documentation.destroy
    respond_to do |format|
      format.html { redirect_to end_documentations_url, notice: 'End documentation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  # PUT /end_documentations/1
  # PUT /end_documentations/1.json
  def print
    cds = params[:cd_value]
    lang = params[:language]
    copies = params[:copy_value]
    user = params[:user]
    w_number_ids = params[:w_number_ids].join(",")
    EndDocumentation.create(copies: copies, cd: cds, created_by: user, printed_at: Date.today, language: lang, params: w_number_ids)
    puts cds + lang + user + w_number_ids + copies
    
    #EndDocumentation.create(:copies params[:cd_value])
    #EndDocumentation.create("Parameter")
    DokuId.create(w_number_id: "1234", dokument_id: "1111")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_end_documentation
      @end_documentation = EndDocumentation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def end_documentation_params
      params.require(:end_documentation).permit(:copies, :cd, :created_by, :printed_at, :language, :params)
    end
end
