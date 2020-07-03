module FollowingsHelper
  def user_followers

      if current_user.followers.any?
        if current_user.id != @user.id
        link_to followings_path(follower_id: @user.id) do
          button_to 'Follow', { controller: 'followings', action: 'create', user_id: @user.id },
                    { method: :post, class: 'btn btn-primary ml-2' }
        end
    end
    end
  end

  def followers_gravatar
    if follower.follower[:Photo].nil?
      image_tag follower.follower_id.Photo.thumb.url
    else
      user_gravatar follower.follower
     end
  end
end
