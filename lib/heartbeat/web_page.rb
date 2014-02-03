module Heartbeat
  class WebPage

    attr_reader :response, :status, :exception

    def initialize url
      @url = url
    end

    def check!
      @response = nil
      @status = nil

      begin
        @response = RestClient.get(url)
        @status = response.code
      rescue => exception
        @exception = exception
        @status = 500
      end

      status
    end

    def exception?
      !exception.nil?
    end

    private

      attr_reader :url
  end
end
