class StayTimesController < ApplicationController
  before_action :set_stay_time, only: [:show, :edit, :update, :destroy]

  # GET /stay_times
  # GET /stay_times.json
  def index
    @stay_times = StayTime.all
  end

  # GET /stay_times/1
  # GET /stay_times/1.json
  def show
  end

  # GET /stay_times/new
  def new
    @stay_time = StayTime.new
  end

  # GET /stay_times/1/edit
  def edit
  end

  # POST /stay_times
  # POST /stay_times.json
  def create
    @stay_time = StayTime.new(stay_time_params)

    respond_to do |format|
      if @stay_time.save
        format.html { redirect_to @stay_time, notice: 'Stay time was successfully created.' }
        format.json { render :show, status: :created, location: @stay_time }
      else
        format.html { render :new }
        format.json { render json: @stay_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stay_times/1
  # PATCH/PUT /stay_times/1.json
  def update
    respond_to do |format|
      if @stay_time.update(stay_time_params)
        format.html { redirect_to @stay_time, notice: 'Stay time was successfully updated.' }
        format.json { render :show, status: :ok, location: @stay_time }
      else
        format.html { render :edit }
        format.json { render json: @stay_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stay_times/1
  # DELETE /stay_times/1.json
  def destroy
    @stay_time.destroy
    respond_to do |format|
      format.html { redirect_to stay_times_url, notice: 'Stay time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stay_time
      @stay_time = StayTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stay_time_params
      params.require(:stay_time).permit(:arrive_date, :leave_date, :nationality, :country_stay, :day_stay)
    end
end
