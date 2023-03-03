class Api::V1::ClientsController < ApplicationController
    before_action :authenticate_client!

    def index
        @clients = Client.all
        render json: @clients
    end
end
