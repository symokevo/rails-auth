class PagesController < ApplicationController
  # Index is a public page
  def index

  end

  # Secret is a private page, only logged-in users can access it
  def secret
    if current_user.blank?
      render plain: '401 Unauthorized', status: :unauthorized
    end
  end
end
