class Article < ActiveRecord::Base
  include SimpleHashtag::Hashtaggable
  hashtaggable_attribute :title

  acts_as_taggable
  acts_as_taggable_on :tag_list

  def week_number
    Time.now.strftime("%U").to_i
  end
end
