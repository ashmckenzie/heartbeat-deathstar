Stethoscope.check :nginx do |response|
  url = "http://new.the-rebellion.net"

  page = Heartbeat::WebPage.new(url)
  page.check!

  response[:url] = url
  response[:status] = page.status
  response[:exception] = CGI.escapeHTML(page.exception.inspect) if page.exception?
end
