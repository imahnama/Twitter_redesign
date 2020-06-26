module UsersHelper
  def user_gravatar(user)
    gravatar_id = Digest::MD5::hexdigest(user.Username.downcase)
    gravatar_url = "http://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.Username)
  end
end
