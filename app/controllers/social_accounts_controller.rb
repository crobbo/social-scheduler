class SocialAccountsController < ApplicationController
    def index 
        @twitter_accounts = current_user.twitter_accounts
    end

    def destroy 
        @twitter_account = current_user.twitter_accounts.find(params[:id]).destroy
        redirect_to social_accounts_path, alert: "Successfully disconnected @#{@twitter_account.username}"
    end
end
