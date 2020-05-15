module AvatarHelper
	def avatar(user)
		email_digest = Digest::MD5.hexdigest user.email
		avitar_url = "https://www.gravatar.com/avatar/#{email_digest}"
		image_tag  avitar_url
	end
end