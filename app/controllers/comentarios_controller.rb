class ComentariosController < ApplicationController
  before_action :set_post
  before_action :set_comentario, only: [:edit, :update, :destroy]
  def create
    @comentario = @post.comentarios.create(comentario_params)
    redirect_to @post
  end

  def edit
   
  end 

  def update
   
    @comentario.update(comentario_params)
    redirect_to @post 
  end

  def destroy
    
    @comentario.destroy
    redirect_to @post
  end


  private
  def comentario_params
    params.require(:comentario).permit(:name, :content)
  end
  def set_post
    @post = Post.find(params[:post_id])
  end
  def set_comentario
    @comentario = Comentario.find(params[:id])
  end
    
end
