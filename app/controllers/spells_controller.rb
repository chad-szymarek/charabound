# The SpellsController class is responsible for handling requests related to spells.
class SpellsController < ApplicationController
  # Retrieves all spells and assigns them to the @spells instance variable.
  def index
    @spells = Spell.all
  end

  # Retrieves a specific spell based on the provided ID and assigns it to the @spell instance variable.
  def show
    @spell = Spell.find(params[:id])
  end

  # Initializes a new spell object and assigns it to the @spell instance variable.
  def new
    @spell = Spell.new
  end

  # Creates a new spell based on the provided parameters.
  # If the spell is successfully saved, redirects to the show page of the created spell.
  # Otherwise, renders the new page again with an "unprocessable_entity" status.
  def create
    @spell = Spell.new(spell_params)

    if @spell.save
      redirect_to @spell
    else
      render :new, status: "unprocessable_entity"
    end
  end

  # Retrieves a specific spell based on the provided ID and assigns it to the @spell instance variable.
  def edit
    @spell = Spell.find(params[:id])
  end

  # Updates a specific spell based on the provided parameters.
  # If the spell is successfully updated, redirects to the show page of the updated spell.
  # Otherwise, renders the edit page again with an "unprocessable_entity" status.
  def update
    @spell = Spell.find(params[:id])

    if @spell.update(spell_params)
      redirect_to @spell
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # Deletes a specific spell based on the provided ID.
  # After deletion, redirects to the root path with a "see_other" status.
  def destroy
    @spell = Spell.find(params[:id])
    @spell.destroy

    redirect_to root_path, status: :see_other
  end

  private

  # Defines the permitted parameters for a spell.
  def spell_params
    params.require(:spell).permit(
      :name,
      :dn,
      :target,
      :range,
      :duration,
      :overcast,
      :description,
      :spell_test
    )
  end
end
