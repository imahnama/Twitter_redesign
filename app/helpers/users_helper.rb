module UsersHelper
  def user_gravatar(user, options = { size: 80 })
    gravatar_id = Digest::MD5.hexdigest(user.Username.downcase)
    size = options[:size]
    gravatar_url = "http://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.Username)
  end

  def current_user_gravatar(current_user)
    if current_user[:Photo].nil?
      user_gravatar current_user
    else
      image_tag current_user.Photo.thumb.url
     end
  end

  def current_user_following?(user)
    if current_user.following?(user)

      button_to 'Unfollow', { controller: 'followings', action: 'destroy', user_id: @user.id },
                { method: :delete, class: 'btn btn-danger ml-2' }
    else
      button_to 'Follow', { controller: 'followings', action: 'create', user_id: @user.id },
                { method: :post, class: 'btn btn-primary text-white ml-2' }

  end
end
end
