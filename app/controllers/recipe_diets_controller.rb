class RecipeDietsController < ApplicationController
  before_action :set_recipe_diet, only: [:show, :edit, :update, :destroy]

  # GET /recipe_diets
  # GET /recipe_diets.json
  def index
    @recipe_diets = RecipeDiet.all
  end

  # GET /recipe_diets/1
  # GET /recipe_diets/1.json
  def show
  end

  # GET /recipe_diets/new
  def new
    @recipe_diet = RecipeDiet.new
  end

  # GET /recipe_diets/1/edit
  def edit
  end

  # POST /recipe_diets
  # POST /recipe_diets.json
  def create
    @recipe_diet = RecipeDiet.new(recipe_diet_params)

    respond_to do |format|
      if @recipe_diet.save
        format.html { redirect_to @recipe_diet, notice: 'Recipe diet was successfully created.' }
        format.json { render :show, status: :created, location: @recipe_diet }
      else
        format.html { render :new }
        format.json { render json: @recipe_diet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe_diets/1
  # PATCH/PUT /recipe_diets/1.json
  def update
    respond_to do |format|
      if @recipe_diet.update(recipe_diet_params)
        format.html { redirect_to @recipe_diet, notice: 'Recipe diet was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe_diet }
      else
        format.html { render :edit }
        format.json { render json: @recipe_diet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_diets/1
  # DELETE /recipe_diets/1.json
  def destroy
    @recipe_diet.destroy
    respond_to do |format|
      format.html { redirect_to recipe_diets_url, notice: 'Recipe diet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_diet
      @recipe_diet = RecipeDiet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_diet_params
      params.require(:recipe_diet).permit(:id_diet, :id_recipe)
    end
end
