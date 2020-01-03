module DropboxApi::Endpoints
  class ContentDownload < DropboxApi::Endpoints::Base
    def initialize(builder)
      @connection = builder.build("https://content.dropboxapi.com") do |c|
        c.response :decode_result
      end
    end

    def build_request(params)
      body = nil
      headers = {
        'Dropbox-API-Arg' => JSON.dump(params),
        'Content-Type' => ''
      }

      return body, headers
    end

    def perform_request(params)
      response = get_response(params)
      api_result = process_response response

      # TODO: Stream response, current implementation will fail with very large
      #       files.
      yield response.body if block_given?

      api_result
    end
  end
end
# TODO:
#  1. Combine ContentDownload and ContentUpload to share its initialize method.
#  2. Reorganize the methods which create the request.
