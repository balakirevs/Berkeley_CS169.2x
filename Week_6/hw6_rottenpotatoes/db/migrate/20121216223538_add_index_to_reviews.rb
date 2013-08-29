class AddIndexToReviews < ActiveRecord::Migration
  def up
    add_index :reviews, :movie_id
    add_index :reviews, :moviegoer_id
  end
end
