class MockstocksController < ApplicationController

  # GET /mockstocks
  # GET /mockstocks.json
  def index
  end

  def createteam
    # return redirect_to '/home/index'
    end


  # # GET /mockstocks/1
  # # GET /mockstocks/1.json
  # def show
  # end

  # # GET /mockstocks/new
  # def new
  #   @mockstock = Mockstock.new
  # end

  # # GET /mockstocks/1/edit
  # def edit
  # end

  # # POST /mockstocks
  # # POST /mockstocks.json
  # def create
  #   @mockstock = Mockstock.new(mockstock_params)

  #   respond_to do |format|
  #     if @mockstock.save
  #       format.html { redirect_to @mockstock, notice: 'Mockstock was successfully created.' }
  #       format.json { render :show, status: :created, location: @mockstock }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @mockstock.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /mockstocks/1
  # # PATCH/PUT /mockstocks/1.json
  # def update
  #   respond_to do |format|
  #     if @mockstock.update(mockstock_params)
  #       format.html { redirect_to @mockstock, notice: 'Mockstock was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @mockstock }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @mockstock.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /mockstocks/1
  # # DELETE /mockstocks/1.json
  # def destroy
  #   @mockstock.destroy
  #   respond_to do |format|
  #     format.html { redirect_to mockstocks_url, notice: 'Mockstock was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_mockstock
  #     @mockstock = Mockstock.find(params[:id])
  #   end

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def mockstock_params
  #     params.require(:mockstock).permit(:name, :teamcount, :user_id)
  #   end
end
