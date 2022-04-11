class Post < ApplicationRecord
    belongs_to :user
    belongs_to :twitter_account
    
    validates :content, length: { minimum: 1, maximum: 280 }
    validates :schedule_time, presence: true

    after_initialize do
        self.schedule_time ||= Time.now + 24.hours
    end
    
    def published?
        tweet_id?
    end

    def publish_to_twitter!
        post = twitter_account.client.update(content)
        update(tweet_id: post.id)
    end
end
