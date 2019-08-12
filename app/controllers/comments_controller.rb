class CommentsController < ApplicationController
 
  def index
    @comment = Comment.all
  end

  def show
   @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    comment_params = params.permit(:content)
    @comment = Comment.create(comment_params)
    # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
    # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
    redirect_to root_path
end
  def edit
  end

  def update
  end

  def delete
  end
end
