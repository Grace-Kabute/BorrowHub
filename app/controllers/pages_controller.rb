class PagesController < ApplicationController
    allow_unauthenticated_access only: :home

    def home
        # view home view when you're already logged in
        redirect_to dashboard_path if authenticated?

    end
    def dashboard
        # if not logged in redirect to root path
        redirect_to new_session_path unless authenticated?
    end
end