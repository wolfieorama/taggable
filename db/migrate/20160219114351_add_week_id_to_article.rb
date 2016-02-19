class AddWeekIdToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :integer, :week_id
  end
end
