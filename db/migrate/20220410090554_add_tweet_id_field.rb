class AddTweetIdField < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :tweet_id, :string
  end
end
