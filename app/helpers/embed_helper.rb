module EmbedHelper
  def embed url
    begin
      o = OhEmbedr::OhEmbedr.new(url: url, :maxwidth => 200)
      o.gets['html'].html_safe
    rescue OhEmbedr::UnsupportedError => error
      if url =~ %r{youtu.be/(.*)$}
        html = <<-HTML
          <iframe width="200" height="113" src="http://www.youtube.com/embed/#{$1}" frameborder="0" allowfullscreen></iframe>
        HTML
        html.html_safe
      else
        link_to "Video", url
      end
    end
  end
end
