class Article < ActiveRecord::Base
  include SimpleHashtag::Hashtaggable
  hashtaggable_attribute :title

  acts_as_taggable
  acts_as_taggable_on :tag_list

  def week_number
    Time.now.strftime("%U").to_i
  end

  def last_articles_tag
    a = self.week_number.pred
    # self.where("week_number == a")
  end
end
