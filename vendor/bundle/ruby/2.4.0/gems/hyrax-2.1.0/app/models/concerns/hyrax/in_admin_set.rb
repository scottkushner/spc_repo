module Hyrax
  module InAdminSet
    extend ActiveSupport::Concern

    included do
      belongs_to :admin_set, predicate: Hyrax.config.admin_set_predicate
    end

    def active_workflow
      Sipity::Workflow.find_active_workflow_for(admin_set_id: admin_set_id)
    end
  end
end
