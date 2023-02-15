# frozen_string_literal: true

# :nodoc:
class Client < ApplicationRecord
  has_many :client_review
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
