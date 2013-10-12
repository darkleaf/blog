module Admin
  class ApplicationController < ::ApplicationController
    self.responder = AdminResponder
    respond_to :html
  end
end
