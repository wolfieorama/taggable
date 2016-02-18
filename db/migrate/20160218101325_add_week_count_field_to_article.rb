class AddWeekCountFieldToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :week_number, :integer
  end
end
