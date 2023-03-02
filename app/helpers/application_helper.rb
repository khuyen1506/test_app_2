module ApplicationHelper

  def gravata_for(user, options = { size: 80})
    email_address = user.email.downcase
    hash = Digest::MD5.hexdigest(email_address)
    size = options[:size]
    gravata_url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
    image_tag(gravata_url, alt: user.username, class: "rounded shadow mx-auto d-block")
  end


end
