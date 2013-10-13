class Admin::ApplicationController < ApplicationController
  self.responder = AdminResponder
  respond_to :html
end
