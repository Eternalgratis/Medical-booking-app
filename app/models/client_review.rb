class ClientReview < ApplicationRecord
    belong_to :doctor, through: :clients
    belong_to :client, through: :doctors
end
