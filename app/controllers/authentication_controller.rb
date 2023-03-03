class AuthenticationController < ApplicationController
    before_action :authenticate_client!, except: [:login, :register]
end
