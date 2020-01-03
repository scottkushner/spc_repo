module DropboxApi::Errors
  class SharingUserError < BasicError
    ErrorSubtypes = {
      :email_unverified => EmailUnverifiedError
    }.freeze
  end
end
