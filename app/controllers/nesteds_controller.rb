class NestedsController < ApplicationController
  before_action :set_nested, only: [:show, :edit, :update, :destroy]

  # GET /nesteds
  # GET /nesteds.json
  def index
    @nesteds = Nested.all
  end

  # GET /nesteds/1
  # GET /nesteds/1.json
  def show
  end

  # GET /nesteds/new
  def new
    @nested = Nested.new
  end

  # GET /nesteds/1/edit
  def edit
  end

  # POST /nesteds
  # POST /nesteds.json
  def create
    @nested = Nested.new(nested_params)

    respond_to do |format|
      if @nested.save
        format.html { redirect_to @nested, notice: 'Nested was successfully created.' }
        format.json { render action: 'show', status: :created, location: @nested }
      else
        format.html { render action: 'new' }
        format.json { render json: @nested.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nesteds/1
  # PATCH/PUT /nesteds/1.json
  def update
    respond_to do |format|
      if @nested.update(nested_params)
        format.html { redirect_to @nested, notice: 'Nested was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @nested.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nesteds/1
  # DELETE /nesteds/1.json
  def destroy
    @nested.destroy
    respond_to do |format|
      format.html { redirect_to nesteds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nested
      @nested = Nested.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nested_params
      params[:nested]
    end
end
