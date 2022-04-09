class TwitterAccountsController < ApplicationController
    before_action :require_user_logged_in!
    
    def index
        @twitter_accounts = current_user.twitter_accounts
    end
end