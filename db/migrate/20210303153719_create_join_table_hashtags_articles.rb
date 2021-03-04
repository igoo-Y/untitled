class CreateJoinTableHashtagsArticles < ActiveRecord::Migration[6.0]
  def change
    create_join_table :hashtags, :articles do |t|
      # t.index [:hashtag_id, :article_id]
      # t.index [:article_id, :hashtag_id]
    end
  end
end
