# Generated via
#  `rails generate hyrax:work SaintPetersHistory`
module Hyrax
  # Generated controller for SaintPetersHistory
  class SaintPetersHistoriesController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::SaintPetersHistory

    # Use this line if you want to use a custom presenter
    self.show_presenter = Hyrax::SaintPetersHistoryPresenter
  end
end
