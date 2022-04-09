class SocialAccountsController < ApplicationController
    def index 
        @social_accounts = []
        @social_accounts << current_user.twitter_accounts.first
    end
end
