# Generated via
#  `rails generate hyrax:work PauwWow`
module Hyrax
  # Generated controller for PauwWow
  class PauwWowsController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::PauwWow

    # Use this line if you want to use a custom presenter
    self.show_presenter = Hyrax::PauwWowPresenter
  end
end
