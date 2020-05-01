module ShoutHelper
	def avatar(user)
		email_digest = Digest::MD5.hexdigest user.email
		avitar_url = "//www.gravitar.com/avatar#{email_digest}"
		image_tag  avitar_url
	end

	def like_button(shout)
		if current_user.liked?(shout)
			link_to "Unlike", unlike_shout_path(shout), method: :delete
		else
			link_to "Like", like_shout_path(shout), method: :post
		end
	end
end