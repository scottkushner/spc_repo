module DropboxApi::Errors
  class ListSharedLinksError < BasicError
    ErrorSubtypes = {
      :path => LookupError,
      :reset => InvalidCursorError
    }.freeze
  end
end
