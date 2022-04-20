class TweetJob < ApplicationJob
  queue_as :default

  def perform(tweet)
    # binding.irb
    return if tweet.published?
    # binding.irb
    puts tweet.schedule_time > Time.current
    return if tweet.schedule_time > Time.current

    tweet.publish_to_twitter!
  end
end
  
