class ApiController < ApplicationController
  protect_from_forgery :null_session
  respond_to :json
end
