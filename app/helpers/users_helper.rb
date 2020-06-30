module UsersHelper
  def user_gravatar(user, options = { size: 80 })
    gravatar_id = Digest::MD5.hexdigest(user.Username.downcase)
    size = options[:size]
    gravatar_url = "http://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.Username)
  end
end
