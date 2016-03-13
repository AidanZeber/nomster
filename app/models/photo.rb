class Photo < ActiveRecord::Base
  belongs_to :user
  belonts_to :place
end
