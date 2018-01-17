class TempdbsController < ApplicationController
  before_action :set_tempdb, only: [:show, :edit, :update, :destroy]

  # GET /tempdbs
  # GET /tempdbs.json
  def index
    @tempdbs = Tempdb.all
  end

  # GET /tempdbs/1
  # GET /tempdbs/1.json
  def show
  end

  # GET /tempdbs/new
  def new
    @tempdb = Tempdb.new
  end

  # GET /tempdbs/1/edit
  def edit
  end

  # POST /tempdbs
  # POST /tempdbs.json
  def create
    @tempdb = Tempdb.new(tempdb_params)

    respond_to do |format|
      if @tempdb.save
        format.html { redirect_to @tempdb, notice: 'Tempdb was successfully created.' }
        format.json { render :show, status: :created, location: @tempdb }
      else
        format.html { render :new }
        format.json { render json: @tempdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tempdbs/1
  # PATCH/PUT /tempdbs/1.json
  def update
    respond_to do |format|
      if @tempdb.update(tempdb_params)
        format.html { redirect_to @tempdb, notice: 'Tempdb was successfully updated.' }
        format.json { render :show, status: :ok, location: @tempdb }
      else
        format.html { render :edit }
        format.json { render json: @tempdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tempdbs/1
  # DELETE /tempdbs/1.json
  def destroy
    @tempdb.destroy
    respond_to do |format|
      format.html { redirect_to tempdbs_url, notice: 'Tempdb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tempdb
      @tempdb = Tempdb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tempdb_params
      params.require(:tempdb).permit(:temp)
    end
end
