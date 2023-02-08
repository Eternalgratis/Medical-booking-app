class ClientReview < ApplicationRecord
    belongs_to :client_account
    belongs_to :doctor
end
