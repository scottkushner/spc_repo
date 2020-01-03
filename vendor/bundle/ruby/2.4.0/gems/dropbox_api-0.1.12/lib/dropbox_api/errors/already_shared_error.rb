module DropboxApi::Errors
  class AlreadySharedError < BasicError
    def shared_folder
      DropboxApi::Metadata::SharedFolder.new @metadata
    end
  end
end
