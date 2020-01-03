# Generated via
#  `rails generate hyrax:work ThePavan`
module Hyrax
  # Generated controller for ThePavan
  class ThePavansController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::ThePavan

    # Use this line if you want to use a custom presenter
    self.show_presenter = Hyrax::ThePavanPresenter
  end
end
