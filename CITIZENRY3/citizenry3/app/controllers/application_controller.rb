class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # belongs_to :user
end
