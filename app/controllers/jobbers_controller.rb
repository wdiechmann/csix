class JobbersController < ApplicationController
  before_action :set_jobber, only: [:show, :edit, :update, :destroy]

  # GET /jobbers
  # GET /jobbers.json
  def index
    @jobbers = Jobber.all
  end

  # GET /jobbers/1
  # GET /jobbers/1.json
  def show
  end

  # GET /jobbers/new
  def new
    @jobber = Jobber.new
  end

  # GET /jobbers/1/edit
  def edit
  end

  # POST /jobbers
  # POST /jobbers.json
  def create
    @jobber = Jobber.new(jobber_params)

    respond_to do |format|
      if @jobber.save
        format.html { redirect_to @jobber, notice: 'Jobber was successfully created.' }
        format.json { render :show, status: :created, location: @jobber }
      else
        format.html { render :new }
        format.json { render json: @jobber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobbers/1
  # PATCH/PUT /jobbers/1.json
  def update
    respond_to do |format|
      if @jobber.update(jobber_params)
        format.html { redirect_to @jobber, notice: 'Jobber was successfully updated.' }
        format.json { render :show, status: :ok, location: @jobber }
      else
        format.html { render :edit }
        format.json { render json: @jobber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobbers/1
  # DELETE /jobbers/1.json
  def destroy
    @jobber.destroy
    respond_to do |format|
      format.html { redirect_to jobbers_url, notice: 'Jobber was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobber
      @jobber = Jobber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jobber_params
      params.require(:jobber).permit(:first_job_at, :last_job_at, :person_id)
    end
end
