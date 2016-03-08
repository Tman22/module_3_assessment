class Api::ApiController < ApplicationController
  protect_from_forgery with: :null_session
  responders

end
