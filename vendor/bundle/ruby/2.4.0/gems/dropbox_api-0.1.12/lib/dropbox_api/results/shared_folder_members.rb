module DropboxApi::Results
  class SharedFolderMembers < DropboxApi::Results::Base
    def users
      @data["users"]
    end

    def groups
      @data["groups"]
    end

    def invitees
      @data["invitees"]
    end

    def cursor
      @data["cursor"]
    end
  end
end
