class Api::V1::ClientAccountController < ApplicationController
    def index
        @client_accounts = Client_account.all
        render json: @client_accounts    
    end

    def show
        client_account = Client_account.find(params[:id])
        render json: @client_account
    end

    def create
        @client_accounts = Client_account.new(client_account_params)

        if @client_account.save
        render json: @client_account, status: :created
        else render json: @client_account.errors, status: :unprocessable_entity
    end
end
    def destroy
        @client_account = Client_account.find(params[:id])
        @client_account.destroy
    end

    private

    def client_account_params
        params.require(:client_account).permit(:name)
    end

end
