# frozen_string_literal: true

class EfimeridesController < ApplicationController
  before_action :set_efimeride, only: %i[show edit update destroy]

  # GET /efimerides
  # GET /efimerides.json
  def index
    @efimerides = Efimeride.all
  end

  # GET /efimerides/1
  # GET /efimerides/1.json
  def show; end

  # GET /efimerides/new
  def new
    @efimeride = Efimeride.new
    @categories = Category.all
  end

  # GET /efimerides/1/edit
  def edit; end

  # POST /efimerides
  # POST /efimerides.json
  def create
    @efimeride = Efimeride.new(efimeride_params)

    respond_to do |format|
      if @efimeride.save
        format.html { redirect_to @efimeride, notice: 'Efimeride was successfully created.' }
        format.json { render :show, status: :created, location: @efimeride }
      else
        format.html { render :new }
        format.json { render json: @efimeride.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /efimerides/1
  # PATCH/PUT /efimerides/1.json
  def update
    respond_to do |format|
      if @efimeride.update(efimeride_params)
        format.html { redirect_to @efimeride, notice: 'Efimeride was successfully updated.' }
        format.json { render :show, status: :ok, location: @efimeride }
      else
        format.html { render :edit }
        format.json { render json: @efimeride.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /efimerides/1
  # DELETE /efimerides/1.json
  def destroy
    @efimeride.destroy
    respond_to do |format|
      format.html { redirect_to efimerides_url, notice: 'Efimeride was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_efimeride
    @efimeride = Efimeride.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def efimeride_params
    params.require(:efimeride).permit(:date, :text, :category_id, :image)
  end
end
