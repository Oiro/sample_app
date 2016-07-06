module UsersHelper

	# Returns the Gravatar for the given user.
# def gravatar_for(user)
	# gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
	# gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
	# image_tag(gravatar_url, alt: user.name, class: "gravatar")


	# gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
 #    size = options[:size]
 #    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
 #    image_tag(gravatar_url, alt: user.name, class: "gravatar")



# end
# Redirects to stored location (or to the default).
# def redirect_back_or(default)
# redirect_to(session[:forwarding_url] || default)
# session.delete(:forwarding_url)
# end
# Stores the URL trying to be accessed.
# def store_location
# session[:forwarding_url] = request.url if request.get?
# end
# end

# Returns the Gravatar for the given user.
def gravatar_for(user, options = { size: 80 })
	gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
	size = options[:size]
	gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
	image_tag(gravatar_url, alt: user.name, class: "gravatar")
end
end