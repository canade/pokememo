class PokememosController < ApplicationController
  before_action :set_pokememo, only: [:show, :edit, :update, :destroy]

  # GET /pokememos
  # GET /pokememos.json
  def index
    @pokememos = Pokememo.all
  end

  # GET /pokememos/1
  # GET /pokememos/1.json
  def show
  end

  # GET /pokememos/new
  def new
    @pokememo = Pokememo.new
  end

  # GET /pokememos/1/edit
  def edit
  end

  # POST /pokememos
  # POST /pokememos.json
  def create
    @pokememo = Pokememo.new(pokememo_params)

    respond_to do |format|
      if @pokememo.save
        format.html { redirect_to @pokememo, notice: 'Pokememo was successfully created.' }
        format.json { render :show, status: :created, location: @pokememo }
      else
        format.html { render :new }
        format.json { render json: @pokememo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokememos/1
  # PATCH/PUT /pokememos/1.json
  def update
    respond_to do |format|
      if @pokememo.update(pokememo_params)
        format.html { redirect_to @pokememo, notice: 'Pokememo was successfully updated.' }
        format.json { render :show, status: :ok, location: @pokememo }
      else
        format.html { render :edit }
        format.json { render json: @pokememo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokememos/1
  # DELETE /pokememos/1.json
  def destroy
    @pokememo.destroy
    respond_to do |format|
      format.html { redirect_to pokememos_url, notice: 'Pokememo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokememo
      @pokememo = Pokememo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pokememo_params
      params.require(:pokememo).permit(:name, :item, :ability, :move1, :move2, :move3, :move4, :H, :A, :B, :C, :D, :S, :nature)
    end
end
