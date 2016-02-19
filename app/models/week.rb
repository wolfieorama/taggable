class Week < ActiveRecord::Base
  has_many :articles

  def count 
    Time.now.strftime("%U").to_i
  end
end
