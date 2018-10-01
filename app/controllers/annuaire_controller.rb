class AnnuaireController < ApplicationController
	before_action :get_id, only: [:show]
  def index
    if params[:term] # Si le paramètre  term existe, c-à-d quand l'utilisateur un nom dans le formulaire de recherche
      @annuaires = Annuaire.joins(:user).where("lower(#{:username}) LIKE '%#{params[:term].downcase}%'").all
    else
      @annuaires = Annuaire.all
    end
  end

  def new
  	@annuaire = Annuaire.new
  end

  def create
    @annuaire_user = User.find(current_user.id)
    @annuaire = Annuaire.new(annuaire_params)
    @annuaire.user = @annuaire_user
      if @annuaire.save
        flash[:success] = "Annuaire enregistré avec succès"
        redirect_to annuaire_index_path
      else
        flash[:notice] = "Erreur lors de validation, vérifier si les champs sont rempli correctement"
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