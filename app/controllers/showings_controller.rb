class ShowingsController < ApplicationController
  # before_action :set_showing, only: %i[ show edit update destroy ]
  before_action :require_admin, only: [:new, :create, :edit, :update, :destroy]
  
  layout 'admins'
  # GET /showings or /showings.json
  def index
    @showings = Showing.all
    # @booking = Booking.new(user_id: current_user.id)
  end

  # GET /showings/1 or /showings/1.json
  def show
    set_showing
  end

  # GET /showings/new
  def new
    @showing = Showing.new
  end

  # GET /showings/1/edit
  def edit
    set_showing
  end

  # POST /showings or /showings.json
  def create
    @showing = Showing.new(showing_params)

    respond_to do |format|
      if @showing.save
        format.html { redirect_to showing_url(@showing), notice: "Showing was successfully created." }
        format.json { render :show, status: :created, location: @showing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @showing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /showings/1 or /showings/1.json
  def update
    set_showing
    respond_to do |format|
      if @showing.update(showing_params)
        format.html { redirect_to showing_url(@showing), notice: "Showing was successfully updated." }
        format.json { render :show, status: :ok, location: @showing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @showing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /showings/1 or /showings/1.json
  def destroy
    set_showing
    @showing.destroy
    respond_to do |format|
      format.html { redirect_to showings_url, notice: "Showing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_showing
      @showing = Showing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def showing_params
      params.require(:showing).permit(:cinema_id, :movie_id, :show_time)
    end
end
