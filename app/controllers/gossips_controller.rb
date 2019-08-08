class  GossipsController < ApplicationController
	def home
		 @gossips= Gossip.all
     @user = User.all
	end
	 def index
    # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
   
 	 end

  	def show
    # Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
    @gossip = Gossip.find(params[:id])
  	end

  	def new
      @gossip = Gossip.new
    # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
  	end

  	def create
      gossip_params =params.permit(:title, :content)
       gossip = Gossip.create(gossip_params)
    # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
    # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
    redirect_to '/'
  	end

  	def edit
     @gossip = Gossip.find(params[:id])
    # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
  	end

  	def update
      @gossip = Gossip.find(params[:id])
      gossip_params =params.require(:gossip).permit(:title, :content)
      @gossip.update(gossip_params)
      redirect_to  root_path

    # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params
    # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
  	end

  	def destroy
        @gossip = Gossip.find(params[:id])
        @gossip.destroy
        redirect_to root_path
    # Méthode qui récupère le potin concerné et le détruit en base
    # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
  	end
	
  def team
		
	end
  def contact
		
	end

end
