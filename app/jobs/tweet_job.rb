class TweetJob < ApplicationJob
  queue_as :default

  def perform(tweet)
    # Do something later
    return if tweet.published?
    
    tweet.publish_to_twitter!
  end
end
