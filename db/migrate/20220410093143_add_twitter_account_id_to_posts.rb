class AddTwitterAccountIdToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :twitter_account_id, :integer
  end
end
