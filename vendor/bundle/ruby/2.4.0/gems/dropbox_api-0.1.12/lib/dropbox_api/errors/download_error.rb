module DropboxApi::Errors
  class DownloadError < BasicError
    ErrorSubtypes = {
      :path => LookupError
    }.freeze
  end
end
