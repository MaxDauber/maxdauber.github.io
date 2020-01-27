# A Liquid filter to generate the MD5 hash of an input string, for Gravatar
# image retrieval.

require "digest/md5"

module Jekyll
	module GravatarFilter
		def gravatar(input)
			email_address = input.downcase.strip
			hash = Digest::MD5.hexdigest(email_address)
			#"https://www.gravatar.com/avatar/#{hash}"
			"https://www.gravatar.com/avatar/243a658fd5860f7cc2b21e501b21472a"
		end
	end
end

Liquid::Template.register_filter(Jekyll::GravatarFilter)
