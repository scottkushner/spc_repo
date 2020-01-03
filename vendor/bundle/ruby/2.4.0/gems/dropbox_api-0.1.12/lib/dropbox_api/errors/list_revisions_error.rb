module DropboxApi::Errors
  class ListRevisionsError < BasicError
    ErrorSubtypes = {
      :path => LookupError
    }.freeze
  end
end
