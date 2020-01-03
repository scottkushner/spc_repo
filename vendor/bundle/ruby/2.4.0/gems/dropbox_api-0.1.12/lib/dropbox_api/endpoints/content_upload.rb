module DropboxApi::Endpoints
  class ContentUpload < DropboxApi::Endpoints::Base
    def initialize(builder)
      @connection = builder.build("https://content.dropboxapi.com") do |c|
        c.response :decode_result
      end
    end

    def build_request(params, body)
      headers = {
        'Dropbox-API-Arg' => JSON.dump(params),
        'Content-Type' => 'application/octet-stream'
      }

      content_length = get_content_length body
      headers['Content-Length'] = content_length unless content_length.nil?

      return body, headers
    end

    def perform_request(params, content)
      process_response(get_response(params, content))
    end

    private

    def get_content_length(content)
      if content.respond_to?(:bytesize)
        content.bytesize.to_s
      elsif content.respond_to?(:length)
        content.length.to_s
      elsif content.respond_to?(:stat)
        content.stat.size.to_s
      end
    end
  end
end
