module ShoutHelper
	def avatar(user)
		email_digest = Digest::MD5.hexdigest user.email
		avitar_url = "//www.gravitar.com/avatar#{email_digest}"
		image_tag  avitar_url
	end
end