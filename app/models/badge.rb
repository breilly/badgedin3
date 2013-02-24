class Badge < ActiveRecord::Base
  attr_accessible :badge_name, :badge_url, :user_id
  
  validates_uniqueness_of :user_id, scope: :badge_name
end
