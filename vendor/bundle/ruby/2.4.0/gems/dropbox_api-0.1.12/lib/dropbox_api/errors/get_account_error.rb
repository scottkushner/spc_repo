module DropboxApi::Errors
  class GetAccountError < BasicError
    ErrorSubtypes = {
      :no_account => NoAccountError
    }.freeze
  end
end
