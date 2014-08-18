class ProgramModelsController < ApplicationController
  before_action :set_program_model, only: [:show, :edit, :update, :destroy]

  # GET /program_models
  # GET /program_models.json
  def index
    @program_models = ProgramModel.all
  end

  # GET /program_models/1
  # GET /program_models/1.json
  def show
  end

  # GET /program_models/new
  def new
    @program_model = ProgramModel.new
  end

  # GET /program_models/1/edit
  def edit
  end

  # POST /program_models
  # POST /program_models.json
  def create
    @program_model = ProgramModel.new(program_model_params)

    respond_to do |format|
      if @program_model.save
        format.html { redirect_to @program_model, notice: 'Program model was successfully created.' }
        format.json { render :show, status: :created, location: @program_model }
      else
        format.html { render :new }
        format.json { render json: @program_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_models/1
  # PATCH/PUT /program_models/1.json
  def update
    respond_to do |format|
      if @program_model.update(program_model_params)
        format.html { redirect_to @program_model, notice: 'Program model was successfully updated.' }
        format.json { render :show, status: :ok, location: @program_model }
      else
        format.html { render :edit }
        format.json { render json: @program_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_models/1
  # DELETE /program_models/1.json
  def destroy
    @program_model.destroy
    respond_to do |format|
      format.html { redirect_to program_models_url, notice: 'Program model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_model
      @program_model = ProgramModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_model_params
      params.require(:program_model).permit(:name)
    end
end
