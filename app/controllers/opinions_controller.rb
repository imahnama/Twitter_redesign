class OpinionsController < ApplicationController
  def index
    @opinion = Opinion.new
    @opinions = Opinion.ordered_by_most_recent
    @users = User.all_users(current_user.id)
  end

  def create
    @opinion = Opinion.new(opinion_params)
    @opinion.AuthorId = current_user.id

    if @opinion.save
      redirect_to opinions_path
    else
      render 'index'
    end
  end

  private

  def opinion_params
    params.require(:opinion).permit(:AuthorId, :Text)
  end
end
