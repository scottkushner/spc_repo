module Hyrax
  class PermissionsController < ApplicationController
    helper_method :curation_concern

    def confirm
      # intentional noop to display default view
    end

    def copy
      authorize! :edit, curation_concern
      VisibilityCopyJob.perform_later(curation_concern)
      flash_message = 'Updating file permissions. This may take a few minutes. You may want to refresh your browser or return to this record later to see the updated file permissions.'
      redirect_to [main_app, curation_concern], notice: flash_message
    end

    def confirm_access
      # intentional noop to display default view
    end

    def copy_access
      authorize! :edit, curation_concern
      # copy visibility
      VisibilityCopyJob.perform_later(curation_concern)

      # copy permissions
      InheritPermissionsJob.perform_later(curation_concern)
      redirect_to [main_app, curation_concern], notice: I18n.t("hyrax.upload.change_access_flash_message")
    end

    def curation_concern
      @curation_concern ||= ActiveFedora::Base.find(params[:id])
    end
  end
end
