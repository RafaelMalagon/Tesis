class ProcessareasController < ApplicationController
  before_action :set_processarea, only: [:show, :edit, :update, :destroy]

  # GET /processareas
  # GET /processareas.json
  def index
    @processareas = Processarea.all
  end

  # GET /processareas/1
  # GET /processareas/1.json
  def show
  end

  # GET /processareas/new
  def new
    @processarea = Processarea.new
  end

  # GET /processareas/1/edit
  def edit
  end

  # POST /processareas
  # POST /processareas.json
  def create
    @processarea = Processarea.new(processarea_params)

    respond_to do |format|
      if @processarea.save
        format.html { redirect_to @processarea, notice: 'Processarea was successfully created.' }
        format.json { render :show, status: :created, location: @processarea }
      else
        format.html { render :new }
        format.json { render json: @processarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /processareas/1
  # PATCH/PUT /processareas/1.json
  def update
    respond_to do |format|
      if @processarea.update(processarea_params)
        format.html { redirect_to @processarea, notice: 'Processarea was successfully updated.' }
        format.json { render :show, status: :ok, location: @processarea }
      else
        format.html { render :edit }
        format.json { render json: @processarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /processareas/1
  # DELETE /processareas/1.json
  def destroy
    @processarea.destroy
    respond_to do |format|
      format.html { redirect_to processareas_url, notice: 'Processarea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_processarea
      @processarea = Processarea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def processarea_params
      params.require(:processarea).permit(:n_level, :t_name, :t_description)
    end
end
