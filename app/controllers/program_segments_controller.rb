class ProgramSegmentsController < ApplicationController
  before_action :set_program_segment, only: [:show, :edit, :update, :destroy]

  # GET /program_segments
  # GET /program_segments.json
  def index
    @program_segments = ProgramSegment.all
  end

  # GET /program_segments/1
  # GET /program_segments/1.json
  def show
  end

  # GET /program_segments/new
  def new
    @program_segment = ProgramSegment.new
  end

  # GET /program_segments/1/edit
  def edit
  end

  # POST /program_segments
  # POST /program_segments.json
  def create
    @program_segment = ProgramSegment.new(program_segment_params)

    respond_to do |format|
      if @program_segment.save
        format.html { redirect_to @program_segment, notice: 'Program segment was successfully created.' }
        format.json { render :show, status: :created, location: @program_segment }
      else
        format.html { render :new }
        format.json { render json: @program_segment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /program_segments/1
  # PATCH/PUT /program_segments/1.json
  def update
    respond_to do |format|
      if @program_segment.update(program_segment_params)
        format.html { redirect_to @program_segment, notice: 'Program segment was successfully updated.' }
        format.json { render :show, status: :ok, location: @program_segment }
      else
        format.html { render :edit }
        format.json { render json: @program_segment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_segments/1
  # DELETE /program_segments/1.json
  def destroy
    @program_segment.destroy
    respond_to do |format|
      format.html { redirect_to program_segments_url, notice: 'Program segment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program_segment
      @program_segment = ProgramSegment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_segment_params
      params.require(:program_segment).permit(:name, :date, :cost, :capacity, :enrolled, :program_model_id)
    end
end
