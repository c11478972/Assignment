class ServiceStationsController < ApplicationController
  # GET /service_stations
  # GET /service_stations.json
  skip_filter :authorise, :only => [:index, :show]
  def index
    @service_stations = ServiceStation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @service_stations }
    end
  end

  # GET /service_stations/1
  # GET /service_stations/1.json
  def show
    @service_station = ServiceStation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @service_station }
    end
  end

  # GET /service_stations/new
  # GET /service_stations/new.json
  def new
    @service_station = ServiceStation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @service_station }
    end
  end

  # GET /service_stations/1/edit
  def edit
    @service_station = ServiceStation.find(params[:id])
  end

  # POST /service_stations
  # POST /service_stations.json
  def create
    @service_station = ServiceStation.new(params[:service_station])

    respond_to do |format|
      if @service_station.save
        format.html { redirect_to @service_station, notice: 'Service station was successfully created.' }
        format.json { render json: @service_station, status: :created, location: @service_station }
      else
        format.html { render action: "new" }
        format.json { render json: @service_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /service_stations/1
  # PUT /service_stations/1.json
  def update
    @service_station = ServiceStation.find(params[:id])

    respond_to do |format|
      if @service_station.update_attributes(params[:service_station])
        format.html { redirect_to @service_station, notice: 'Service station was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @service_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_stations/1
  # DELETE /service_stations/1.json
  def destroy
    @service_station = ServiceStation.find(params[:id])
    @service_station.destroy

    respond_to do |format|
      format.html { redirect_to service_stations_url }
      format.json { head :no_content }
    end
  end
end
