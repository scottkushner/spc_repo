module DropboxApi
  class ConnectionBuilder
    def initialize(oauth_bearer)
      @oauth_bearer = oauth_bearer
    end

    def middleware
      @middleware ||= MiddleWare::Stack.new
    end

    def build(url)
      Faraday.new(url) do |connection|
        middleware.apply(connection) do
          connection.authorization :Bearer, @oauth_bearer

          yield connection
        end
      end
    end
  end
end
