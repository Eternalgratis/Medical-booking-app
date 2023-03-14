class Api::V1::ClientReviewController < ApplicationController
    def index
        @client_reviews = client_review.all
        render json: @client_reviews
    end

    def show
        @client_review = client_review.find(params[:id])
        render json: @client_review
    end
end
