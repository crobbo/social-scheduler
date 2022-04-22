class TwitterAccountsController < ApplicationController
    # before_action :require_user_logged_in!
    
    def index
        @twitter_accounts = current_user.twitter_accounts
        redirect_to  social_accounts_path
    end    
end