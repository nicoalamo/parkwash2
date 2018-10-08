class CreditNotesController < ApplicationController
  before_action :set_credit_note, only: [:show, :edit, :update, :destroy]

  # GET /credit_notes
  # GET /credit_notes.json
  def index
    @credit_notes = CreditNote.all
  end

  # GET /credit_notes/1
  # GET /credit_notes/1.json
  def show
  end

  # GET /credit_notes/new
  def new
    @credit_note = CreditNote.new
  end

  # GET /credit_notes/1/edit
  def edit
  end

  # POST /credit_notes
  # POST /credit_notes.json
  def create
    @credit_note = CreditNote.new(credit_note_params)

    respond_to do |format|
      if @credit_note.save
        format.html { redirect_to @credit_note, notice: 'Credit note was successfully created.' }
        format.json { render :show, status: :created, location: @credit_note }
      else
        format.html { render :new }
        format.json { render json: @credit_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /credit_notes/1
  # PATCH/PUT /credit_notes/1.json
  def update
    respond_to do |format|
      if @credit_note.update(credit_note_params)
        format.html { redirect_to @credit_note, notice: 'Credit note was successfully updated.' }
        format.json { render :show, status: :ok, location: @credit_note }
      else
        format.html { render :edit }
        format.json { render json: @credit_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /credit_notes/1
  # DELETE /credit_notes/1.json
  def destroy
    @credit_note.destroy
    respond_to do |format|
      format.html { redirect_to credit_notes_url, notice: 'Credit note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_credit_note
      @credit_note = CreditNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def credit_note_params
      params.require(:credit_note).permit(:creation_date, :informed_gross_amount, :sii_status, :receipt_id)
    end
end
