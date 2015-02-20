class LikesController <ApplicationController

  def upvote
    @status = Status.find(params[:id])
    @status.likes.create
    redirect_to(likes_path)
  end

end
