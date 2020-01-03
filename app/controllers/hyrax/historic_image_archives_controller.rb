# Generated via
#  `rails generate hyrax:work HistoricImageArchive`
module Hyrax
  # Generated controller for HistoricImageArchive
  class HistoricImageArchivesController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::HistoricImageArchive

    # Use this line if you want to use a custom presenter
    self.show_presenter = Hyrax::HistoricImageArchivePresenter
  end
end
