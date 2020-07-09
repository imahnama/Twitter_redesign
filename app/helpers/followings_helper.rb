module FollowingsHelper
  def followers_gravatar
    if follower.follower[:Photo].nil?
      image_tag follower.follower_id.Photo.thumb.url
    else
      user_gravatar follower.follower
    end
  end
end
