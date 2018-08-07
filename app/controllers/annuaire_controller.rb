class AnnuaireController < ApplicationController
	before_action :get_id, only: [:show]
  def index
  	@annuaires = Annuaire.all
  end

  def new
  	@annuaire = Annuaire.new
  end

  def create
  	@annuaire = Annuaire.new(annuaire_params)
	@annuaire.save
    if @annuaire
      flash[:success] = "Annuaire enregistré avec succès"
      redirect_to annuaire_index_path
    else
      flash[:notice] = "Il y a peut-être un erreur"
      render "new"
    end
  end

  def show
  end

  def annuaire_params
    params.require(:annuaire).permit(:num_dept, :nom_dpt, :commune, :email)
  end

  def get_id
    @annuaire = Annuaire.find(params[:id])
  end

end
