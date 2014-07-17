class MetersController < ApplicationController
  # GET /meters
  # GET /meters.json
  def index
    @meters = Meter.all

    render json: @meters
  end

  # GET /meters/1
  # GET /meters/1.json
  def show
    @meter = Meter.find(params[:id])

    render json: @meter
  end

  # POST /meters
  # POST /meters.json
  def create
    @meter = Meter.new(params[:meter])

    if @meter.save
      render json: @meter, status: :created, location: @meter
    else
      render json: @meter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /meters/1
  # PATCH/PUT /meters/1.json
  def update
    @meter = Meter.find(params[:id])

    if @meter.update(params[:meter])
      head :no_content
    else
      render json: @meter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meters/1
  # DELETE /meters/1.json
  def destroy
    @meter = Meter.find(params[:id])
    @meter.destroy

    head :no_content
  end
end
