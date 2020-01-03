# Generated via
#  `rails generate hyrax:work FrankJGuariniArchive`
module Hyrax
  # Generated controller for FrankJGuariniArchive
  class FrankJGuariniArchivesController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::FrankJGuariniArchive

    # Use this line if you want to use a custom presenter
    self.show_presenter = Hyrax::FrankJGuariniArchivePresenter
  end
end
