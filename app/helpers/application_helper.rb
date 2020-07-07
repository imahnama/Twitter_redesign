module ApplicationHelper
  def all_user_opinions
    @reviews = Opinion.all

    render partial: 'opinions/all_opinions', collection: @reviews, as: :review
  end

  def user_opinions
    @reviews = Opinion.where(AuthorId: current_user.id)

    render partial: 'opinions/all_opinions', collection: @reviews, as: :review
  end

  # @all_opinions.Text

  def all_user_gravatar
    if opinion.Author[:Photo].nil?
      user_gravatar opinion.Author
    else
      image_tag opinion.Author.Photo.thumb.url
    end
  end

  def following_size
    current_user.following.size
  end

  def followers_size
    current_user.followers.size
  end

  def user_name
    current_user.Username
  end
end
