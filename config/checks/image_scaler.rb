Stethoscope.check :image_scaler do |response|
  url = "http://image-scaler.the-rebellion.net/images/100x100/http%3A%2F%2Festrip.org%2Fcontent%2Fusers%2Ftinypliny%2F0409%2FGrannySmith0404.jpg?api_key=7e56ef8094f7012f7b86388d1207e566"

  page = Heartbeat::WebPage.new(url)
  page.check!

  response[:url] = url
  response[:status] = page.status
  response[:exception] = CGI.escapeHTML(page.exception.inspect) if page.exception?
end
