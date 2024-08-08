class CompletionsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @completion = Completion.new
  end

  def create
    # Récupérer la plant via le plant id
    @plant = Plant.find(params[:plant_id])
    # Créer une completion avec les informations du formulaire
    @completion = Completion.new(completion_params)
    # Associer la completion et la plant trouvée
    @completion.plant = @plant
    # On save
    if @completion.save
      redirect_to garden_path(@plant.garden)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def completion_params
    params.require(:completion).permit(:chore_id)
  end
end
