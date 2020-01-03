require 'singleton'

module PulUvRails
  class UniversalViewer
    include Singleton
    class << self
      def script_tag
        @script_tag ||= instance.script_tag
      end
    end

    def script_tag
      "<script type=\"text/javascript\" id=\"embedUV\" src=\"#{viewer_link}\"></script>".html_safe
    end

    def viewer_link
      "/#{viewer_root}/uv-#{viewer_version}/lib/embed.js"
    end

    def viewer_root
      'universalviewer/dist'
    end

    def viewer_version
      PulUvRails::VERSION
    end

    private

    def absolute_root
      Rails.root.join('public', viewer_root)
    end
  end
end
